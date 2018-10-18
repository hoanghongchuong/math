@extends('index')
@section('content')

<?php
$setting = Cache::get('setting');
$slider = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();
?>
<section class="vk-content">
	<div class="vk-home__section vk-home__section--banner">
	    <div class="container vk-banner__content">
	        <ul class="vk-cat__list">
	        	@foreach($categories as $category)
	            <li>
	                <a href="{{url('tai-lieu/'.$category->alias)}}" class="vk-cat-item">
	                    <h2 class="vk-cat-item__title">{{$category->name}}</h2>
	                    <div class="vk-cat-item__text">{{ $category->mota }}</div>
	                </a>
	            </li>
	            @endforeach
	        </ul>
	    </div>
	    <div class="vk-banner__slider " data-slider="banner">
	       	@foreach($slider as $k=>$s)
	        <div class="vk-banner vk-banner--style-2">
	            <div class="vk-img vk-img--cover">
	                <img src="{{asset('upload/hinhanh/'.$s->photo)}}" alt="">
	            </div>
	        </div>
			@endforeach       
	    </div>
	</div> <!--./banner-->

	<div class="vk-home__section vk-home__section--service">
	    <div class="container">
	        <div class="vk-service__content">
	            <div class="vk-service__list row no-gutters">
					@foreach($posts as $post)
	                <div class="col-lg-3 _item">
	                    <div class="vk-service-item vk-cat-item--style-1">
	                        <span class="vk-service-item__label">NEW</span>
	                        <h2 class="vk-service-item__title"><a href="{{url('tin-tuc/'.$post->alias.'.html')}}">{{ $post->name }}</a></h2>
	                        <div class="vk-service-item__date">{{date('d/m/Y', strtotime($post->created_at))}}</div>
	                    </div>
	                </div>
					@endforeach
	            </div>
	        </div>
	    </div>
	</div> <!--./service-->

	<div class="vk-home__section pt-50">
	    <div class="container">
	        <h2 class="vk-page__title text-center mb-40">Math<span class="vk-text--green-1">X</span> <span
	                class="vk-text--orange-1">Doc</span> - Kho tài liệu Toán học lớn nhất Việt nam</h2>
	        <div class="row justify-content-center">
	            <div class="col-lg-10">
	                <div class="vk-video">
	                    <div class="row">
	                        <div class="col-lg-6">
	                            <a href="https://www.youtube.com/embed/{{$video->link}}" class="vk-img vk-img--cover"
	                               data-fancybox="video">
	                                <img src="https://i.ytimg.com/vi/{!! $video->link !!}/hqdefault.jpg" alt="">
	                            </a>
	                        </div>
	                        <div class="col-lg-6">
	                            <div class="vk-video__brief">
	                                <div class="vk-video__text">
	                                    <p>
	                                        {{$video->mota}}
	                                    </p>
	                                </div>
	                                <h2 class="vk-video__title"> Tại sao lại chọn chúng tôi</h2>
	                                <div class="vk-count__list mb-10 mb-lg-30">
	                                    <div class="vk-count-item vk-count-item--style-2">
	                                        <div class="vk-count-item__number">+
	                                        	<span class="vk-countto" data-from="0" data-to="7500"></span>
	                                        </div>
	                                        <div class="vk-count-item__text">Tài liệu hiện đang có</div>
	                                    </div>
	                                </div>

	                                <a href="{{url('gioi-thieu')}}" class="vk-btn vk-btn--grey-2 rounded-0"> Xem thêm <i
	                                        class="ti-arrow-right ml-10"></i></a>
	                            </div>
	                        </div>
	                    </div>
	                </div> <!--./video-->

	            </div>

	        </div>
	    </div>
	</div>

	<div class="vk-home__section pt-50">
	    <div class="container">
	        <h2 class="vk-page__title text-center mb-40">Tài liệu mới</h2>
	        <div class="vk-doc__list vk-slider--style-1" data-slider="home-doc">
				@foreach($document_new as $item)
	            <div class=" _item">
	                <div class="vk-shop-item vk-shop-item--style-1">
	                    <a href="{{ url('tai-lieu/'.$item->alias.'.html') }}" title="{{$item->name}}" class="vk-img vk-img--cover">
	                        <img src="{{asset('upload/product/'.$item->photo)}}" alt="{{$item->name}}" class="vk-img__img">
	                    </a>
	                    <div class="vk-shop-item__brief">
	                        <h3 class="vk-shop-item__title" data-truncate-lines="2"><a href="{{ url('tai-lieu/'.$item->alias.'.html') }}" title="{{$item->name}}">{{$item->name}}</a></h3>
	                        <ul class="vk-shop-item__meta">
	                            <li><i class="ti-eye"></i> {{number_format($item->views)}}</li>
	                            <li><i class="ti-import"></i> {{number_format($item->download)}}</li>
	                        </ul>
	                    </div>
	                </div>
	            </div>
				@endforeach	            
	        </div>
	    </div>
	</div>

	<!-- <a href="#" class="vk-img vk-img--mw100 pt-20 pb-20 ">
	    <img src="images/ads-1.jpg" alt="">
	</a> -->

	<div class="vk-home__section pt-50">
	    <div class="container">
		@foreach($categories_home as $cate_home)
	        <div class="vk-heading--style-2">
	            <h2 class="vk-heading__title">{{$cate_home->name}}</h2>
				<?php $cateChilds = DB::table('product_categories')->where('status',1)->where('noibat',1)->where('parent_id', $cate_home->id)->get(); 
					$documents = $cate_home->products->orderBy('id','desc')->take(20)->get();
				?>
	            <ul class="vk-heading__list">
	                @foreach($cateChilds as $child)
	                <li><a href="{{url('tai-lieu/'.$child->alias)}}">{{$child->name}}</a></li>
	                @endforeach
	            </ul>
	            <a href="#cat1" data-menu="" class="vk-btn vk-btn--outline-green-1 rounded-0 "> <i class="ti-menu"></i></a>
	        </div>
	        <div class="vk-doc__list vk-slider--style-1" data-slider="home-doc">
				@foreach($documents as $document)
	            <div class=" _item">
	                <div class="vk-shop-item vk-shop-item--style-1">
	                    <a href="{{ url('tai-lieu/'.$document->alias.'.html') }}" title="{{$document->name}}" class="vk-img vk-img--cover">
	                        <img src="{{asset('upload/product/'.$document->photo)}}" alt="{{$document->name}}" class="vk-img__img">
	                    </a>

	                    <div class="vk-shop-item__brief">
	                        <h3 class="vk-shop-item__title" data-truncate-lines="2"><a href="{{ url('tai-lieu/'.$document->alias.'.html') }}" title="{{$document->name}}">{{$document->name}}</a></h3>
	                        <ul class="vk-shop-item__meta">
	                            <li><i class="ti-eye"></i> {{number_format($document->views)}}</li>
	                            <li><i class="ti-import"></i> {{number_format($document->download)}}</li>
	                        </ul>
	                    </div>
	                </div> <!--./vk-shop-item-->
	            </div>
				@endforeach
	        </div>
	        <div class="pt-30 pb-30 text-center">
	            <a href="{{url('tai-lieu/'.$cate_home->alias)}}" class="vk-btn vk-btn--green-1" style="min-width: 120px">Xem tiếp</a>
	        </div>
		@endforeach
	    </div>
	</div>

	<div class="vk-home__section vk-home__section--contact">
	    <div class="container">
	        <h2 class="vk-page__title">Kho tài liệu số 1 Việt Nam</h2>
	        <p>MathX Doc tự hào là nơi cung cấp tài liệu Toán học số 1 tại Việt Nam hiện nay <br>
	            Để lại thông tin để chúng tôi có thể giúp đỡ bạn sớm nhất</p>
			<form action="{{ route('postContact') }}" method="post">
				{{csrf_field()}}
		        <div class="vk-form vk-form--contact pt-20">			
		            <div class="_field">
		                <input type="text" class="form-control" name="name" required="required" placeholder="Họ tên">
		                <input type="text" class="form-control" name="phone" required="required" placeholder="Số điện thoại">
		                <input type="text" class="form-control" name="email" required="required" placeholder="Email">
		            </div>
		            <div class="_button">
		                <button class="vk-btn vk-btn--green-1">Gửi Liên hệ</button>
		            </div>
		        </div>
	        </form>
	    </div>
	</div>

	<div class="vk-home__section pt-50">
	    <div class="container">
	        <h2 class="vk-page__title text-center mb-40">Tin tức sự kiện nổi bật</h2>

	        <div class="vk-blog__list vk-slider--style-1" data-slider="blog">

				@foreach($news as $data)
	            <div class=" _item">
	                <div class="vk-blog-item vk-blog-item--style-1">
	                    <a href="{{ url('tin-tuc/'.$data->alias.'.html') }}" title="{{$data->name}}" class="vk-img vk-img--cover">
	                        <img src="{{asset('upload/news/'.$data->photo)}}" alt="{{$data->name}}" class="vk-img__img">
	                        <div class="vk-blog-item__date">
	                            <div class="_day">{{date('d', strtotime($data->created_at))}}</div>
	                            <div class="_month _year">{{date('m/Y', strtotime($data->created_at))}}</div>
	                        </div>
	                    </a>

	                    <div class="vk-blog-item__brief">
	                        <h3 class="vk-blog-item__title"><a href="{{ url('tin-tuc/'.$data->alias.'.html') }}" title="{{$data->name}}">{{$data->name}}</a></h3>
	                        <div class="vk-blog-item__text" data-truncate-lines="2">{!! $data->mota !!}</div>

	                    </div>
	                </div> <!--./vk-blog-item-->
	            </div>
				@endforeach
	        </div>


	    </div>
	</div>
</section>
@endsection
