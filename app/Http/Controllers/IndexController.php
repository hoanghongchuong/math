<?php 
namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Carbon\Carbon;
use App\Products;
use App\ProductCate;
use App\NewsLetter;
use DB,Cache,Mail;
use Session;
class IndexController extends Controller {
	protected $setting = NULL;


	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct()
	{
    	$setting = DB::table('setting')->select()->where('id',1)->get()->first();
    	$menu_top = DB::table('menu')->select()->where('com','menu-top')->where('status',1)->orderBy('stt','asc')->get();
    	$dichvu = DB::table('news')->select()->where('status',1)->where('com','dich-vu')->orderBy('stt','asc')->get();
    	$cateProducts = DB::table('product_categories')->where('parent_id',0)->get();
    	$about = DB::table('about')->where('com','gioi-thieu')->get();
    	Cache::forever('setting', $setting);
        Cache::forever('menu_top', $menu_top);
        Cache::forever('dichvu', $dichvu);
        Cache::forever('cateProducts', $cateProducts);
        Cache::forever('about', $about);
        if(Auth::check())
        {
        	View::share('nguoidung',Auth::user());
        }
        // Cache::forever('chinhanh', $chinhanh);
	}

	/**
	 * Show the application welcome screen to the user.
	 *
	 * @return Response
	 */
	public function index()
	{		
		$about = DB::table('about')->where('com','gioi-thieu')->first();		
		$categories = DB::table('product_categories')->where('parent_id', 0)->where('status',1)->get();
		$categories_home = ProductCate::where('parent_id', 0)->where('noibat',1)->where('status',1)->get();
		$news = DB::table('news')->where('status',1)->where('noibat',1)->where('com','tin-tuc')->take(20)->orderBy('id','desc')->get();
		$posts = DB::table('news')->where('status',1)->where('com','baiviet')->take(4)->orderBy('stt','asc')->get();
		$document_new = DB::table('products')->where('status', 1)->orderBy('id','desc')->take(20)->get();

		$video = DB::table('video')->first();

		$setting = Cache::get('setting');
		$title = $setting->title;
		$keyword = $setting->keyword;
		$description = $setting->description;
		$whys = DB::table('lienket')->where('com','taisao')->orderBy('stt','asc')->get();
		$com = 'index';
		// End cấu hình SEO
		$img_share = asset('upload/hinhanh/'.$setting->photo);

		return view('templates.index_tpl', compact('com','about','tintuc_moinhat','keyword','description','title','img_share','slider','news','categories','document_new','categories_home','posts','video'));
	}
	public function getProduct(Request $req)
	{
		$cate_pro = DB::table('product_categories')->where('status',1)->where('parent_id',0)->orderby('id','asc')->get();
		
		$data = DB::table('products')->where('status', 1);
		$sort = $req->sort ? $req->sort : 'desc';
		$data = $data->orderBy('id', $sort)->paginate(20);		
		$com='tai-lieu';		
		$title = "Tài liệu";
		$keyword = "Tài liệu";
		$description = "Tài liệu";
		// $img_share = asset('upload/hinhanh/'.$banner_danhmuc->photo);
		
		return view('templates.product_tpl', compact('title','keyword','description','data', 'com','cate_pro','sort'));
	}

	public function getProductList($id, Request $req)
	{
		
		$cate_pro = DB::table('product_categories')->where('status',1)->where('parent_id', 0)->orderby('id','asc')->get();
		$com='tai-lieu';		
		$product_cate = ProductCate::where('status',1)->where('alias',$id)->get()->first();
		if(!empty($product_cate)){			
			$sort = $req->sort ? $req->sort : 'desc';

			$data = $product_cate->products->orderBy('id', $sort)->paginate(20);
			$data_hot =  $product_cate->products->take(2)->orderBy(DB::raw('RAND()'))->where('noibat',1)->get();			
			$cateChilds = DB::table('product_categories')->where('status',1)->where('parent_id', $product_cate->id)->get();
			if(!empty($product_cate->title)){
				$title = $product_cate->title;
			}else{
				$title = $product_cate->name;
			}
			$keyword = $product_cate->keyword;
			$description = $product_cate->description;
			$img_share = asset('upload/product/'.$product_cate->photo);			
			return view('templates.productlist_tpl', compact('data','product_cate','keyword','description','title','img_share','cate_pro','cateChilds','com','data_hot','sort'));
		}else{
			return redirect()->route('getErrorNotFount');
		}
	}

	
	public function getProductDetail(Request $req, $id)
	{
        
        $cate_pro = DB::table('product_categories')->where('status',1)->orderby('id','asc')->get();
		$product_detail = DB::table('products')->select()->where('status',1)->where('alias',$id)->first();

		if(!empty($product_detail)){			
			$cateProduct = DB::table('product_categories')->select('name','alias')->where('id',$product_detail->cate_id)->first();
			// dem luot view
			$sessionKey = $product_detail->id;
			$sessionView = Session::get($product_detail->id);			    
			    if (!$sessionView) { 
			        Session::put($sessionKey, $product_detail->id); 
			        Products::where('id', $product_detail->id)->increment('views',1,['id'=> $product_detail->id]);
			    }			

			$otherDocument = DB::table('products')->where('status',1)->where('id', '<>', $product_detail->id)->orderByRaw('RAND(20)')->get();
			if(!empty($product_detail->title)){
				$title = $product_detail->title;
			}else{
				$title = $product_detail->name;
			}
			$keyword = $product_detail->keyword;
			$description = $product_detail->description;
			$img_share = asset('upload/product/'.$product_detail->photo);

			// End cấu hình SEO
			return view('templates.product_detail_tpl', compact('product_detail','keyword','description','title','img_share','cateProduct','cate_pro','otherDocument'));
		}else{
			return redirect()->route('getErrorNotFount');
		}
	}

	//read file document

	public function readFileDocument($id)
	{
		$document = DB::table('products')->where('id', $id)->first();		
		return view('templates.read_document', compact('document'));
	}

	// count download
	public function countDownload(Request $req)
	{
		$id = $req->id;
		Products::where('id', $id)->increment('download',1,['id'=> $id]);
		$data = Products::find($id);
		return $data->download;
	}

	public function getAbout()
	{
		$about = DB::table('about')->where('com','gioi-thieu')->first();
        $com = 'gioi-thieu';
		$slogans = DB::table('lienket')->where('com','taisao')->orderBy('stt','asc')->get();
		 //Cấu hình SEO
		$title = 'Giới thiệu';
		$keyword = 'Giới thiệu';
		$description = 'Giới thiệu';
		// End cấu hình SEO

		return view('templates.about_tpl', compact('about','keyword','description','title','img_share','com','slogans'));
	}
	public function search(Request $request)
	{
		$search = $request->search_name;
		$category = $request->category_document;		
		$catex= ProductCate::where('id',$category)->first();			
		$result = $catex->products->where('status',1);
		
		$result = $result->where('name', 'LIKE', '%' . $search . '%')->get();		
		// dd($catex->id);
		return view('templates.search_tpl', compact('search','result','catex'));
	}

	public function getNews()
	{
		$cateNews = DB::table('news_categories')->where('com','tin-tuc')->get();		
		$tintuc = DB::table('news')->select()->where('status',1)->where('com','tin-tuc')->orderby('stt','asc')->paginate(6);		
		$hot_news = DB::table('news')->where('status',1)->where('com', 'tin-tuc')->where('noibat',1)->orderBy('stt','asc')->first();		
		$com='tin-tuc';
		// Cấu hình SEO
		$title = "Tin tức";
		$keyword = "Tin tức";
		$description = "Tin tức";
		$img_share = '';
		// End cấu hình SEO
		return view('templates.news_tpl', compact('tintuc','keyword','description','title','img_share','com','cateNews','hot_news'));
	}
	public function getListNews($id)
	{
		//Tìm article thông qua mã id tương ứng
		$tintuc_cate = DB::table('news_categories')->select()->where('status',1)->where('com','tin-tuc')->where('alias',$id)->get()->first();
		$cateNews = DB::table('news_categories')->where('com','tin-tuc')->get();
		if(!empty($tintuc_cate)){
			$tintuc = DB::table('news')->select()->where('status',1)->where('cate_id',$tintuc_cate->id)->orderBy('id','desc')->paginate(5);
			$tintuc_moinhat_detail = DB::table('news')->select()->where('status',1)->where('com','tin-tuc')->orderby('created_at','desc')->take(6)->get();
			$hot_news = DB::table('news')->where('status',1)->where('com', 'tin-tuc')->where('noibat',1)->orderBy('stt','asc')->take(5)->get();
			$setting = Cache::get('setting');

			if(!empty($tintuc_cate->title)){
				$title = $tintuc_cate->title;
			}else{
				$title = $tintuc_cate->name;
			}			
			$keyword = $tintuc_cate->keyword;
			$description = $tintuc_cate->description;
			$img_share = asset('upload/news/'.$tintuc_cate->photo);

			// End cấu hình SEO
			return view('templates.news_list', compact('tintuc','tintuc_cate','banner_danhmuc','keyword','description','title','img_share','tintuc_moinhat_detail','hot_news', 'cateNews'));
		}else{
			return redirect()->route('getErrorNotFount');
		}
	}
	
	public function getNewsDetail($id)
	{
		$data = DB::table('news')->where('status',1)->where('alias',$id)->get()->first();
		$cateNews = DB::table('news_categories')->where('com','tin-tuc')->get();
		if(!empty($data)){			
			$cate_pro = DB::table('product_categories')->where('status',1)->where('parent_id',0)->orderby('id','asc')->get();
			$baiviet_khac = DB::table('news')->where('status',1)->where('id','<>', $data->id)->where('com','tin-tuc')->orderBy(DB::raw('RAND()'))->take(3)->get();
			$com='tin-tuc';
			$setting = Cache::get('setting');
			// Cấu hình SEO
			if(!empty($data->title)){
				$title = $data->title;
			}else{
				$title = $data->name;
			}
			$keyword = $data->keyword;
			$description = $data->description;
			$img_share = asset('upload/news/'.$data->photo);

			return view('templates.news_detail_tpl', compact('data','com','banner_danhmuc','baiviet_khac','keyword','description','title','img_share','cateNews'));
		}else{
			return redirect()->route('getErrorNotFount');
		}		
	}	
	public function postNewsLetter(Request $request)
	{
		$this->validate($request,
            ["txtEmail" => "required"],
            ["txtEmail.required" => "Bạn chưa nhập email"]
        );
        $kiemtra_mail = DB::table('newsletter')->select()->where('status',1)->where('com','newsletter')->where('email',$request->txtEmail)->get()->first();
        if(empty($kiemtra_mail)){
			$data = new NewsLetter();
			$data->name = $request->txtName;
			$data->email = $request->txtEmail;
			$data->phone = $request->txtPhone;
			$data->content = $request->txtContent;
			$data->status = 1;
			$data->com = 'newsletter';
			$data->save();

			echo "<script type='text/javascript'>
				alert('Bạn đã đăng kí nhận tin tức thành công !');
				window.location = '".url('/')."' </script>";
		}else{
			echo "<script type='text/javascript'>
				alert('Email này đã đăng ký !');
				window.location = '".url('/')."' </script>";
		}
	}
	public function getErrorNotFount(){
		$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','san-pham')->get()->first();
		return view('templates.404_tpl',compact('banner_danhmuc'));
	}

    public function getProductByCate($alias){
    	$cate_pro = DB::table('product_categories')->where('status',1)->where('parent_id',0)->orderby('id','asc')->get();
    	$categoryDetail = ProductCate::select('name','alias','id','parent_id')->where('alias', $alias)->first();
    	$products = $categoryDetail->products;

    	return view('templates.cateproduct_tpl', compact('categoryDetail','cate_pro','products'));
    }
   
}
