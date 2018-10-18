<?php 
    $banner_slidebar1 = DB::table('banner_content')->where('position', 6)->first();
    $banner_slidebar2 = DB::table('banner_content')->where('position', 7)->first();
    $docs = DB::table('products')->where('status',1)->take(3)->orderBy('id','desc')->get();
?>
<div class="vk-sidebar__box p-0">
    <div class="vk-img vk-img--mw100">
        <img src="{{asset('upload/banner/'.@$banner_slidebar1->image)}}" alt="">
    </div>
</div>
<div class="vk-sidebar__box">
    <h2 class="vk-sidebar__title">Tài liệu mới</h2>

    <div class="vk-blog__list row">
        @foreach($docs as $doc)
        <div class="col-12 _item">
            <div class="vk-blog-item vk-blog-item--style-3">
                <a href="{{ url('tai-lieu/'.$doc->alias.'.html') }}" title="{{$doc->name}}" class="vk-img vk-img--cover">
                    <img src="{{asset('upload/product/'.$doc->photo)}}" alt="{{$doc->name}}" class="vk-img__img">
                </a>

                <div class="vk-blog-item__brief">
                    <h3 class="vk-blog-item__title" data-truncate-lines="3"><a href="{{ url('tai-lieu/'.$doc->alias.'.html') }}" title="{{$doc->name}}">{{$doc->name}}</a></h3>
                </div>
            </div> <!--./vk-blog-item-->
        </div>
        @endforeach
        
    </div>
    <a href="{{url('tai-lieu')}}" class="vk-btn vk-btn--grey-5 vk-btn--sm mt-5" >Xem thêm</a>
</div>

<div class="vk-sidebar__box p-0">

    <div class="vk-img vk-img--mw100">
        <img src="{{asset('upload/banner/'.@$banner_slidebar2->image)}}" alt="">
    </div>
</div>