@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $cateProducts = Cache::get('cateProducts');
    $banner_doc = DB::table('banner_content')->where('position', 10)->first();
    $banner_doc1 = DB::table('banner_content')->where('position', 11)->first();
?>
<section class="vk-content">
    <div class="vk-breadcrumb">
        <nav class="container">
            <ul class="vk-breadcrumb__list">
                <li><a href="{{url('')}}">Trang chủ</a></li>
                <li class="">Tài liệu</li>
                <li class="active">{{$product_cate->name}}</li>
            </ul>
        </nav>
    </div>
    <!--./vk-breadcrumb-->    
    <div class="container">
        <form action="" id="filter_products" method="get">
            <div class="row vk-blog-detail__row">                
                <div class="col-lg-9 col-xl-9--self">
                    <div class="vk-banner vk-banner--style-1">
                        <h1 class="vk-page__title vk-page__title--banner">{{$product_cate->name}}</h1>
                        @if(count($cateChilds) > 0)
                        <ul class="vk-banner__list">
                            @foreach($cateChilds as $child)
                            <li><a href="{{url('tai-lieu/'.$child->alias)}}">{{$child->name}}</a></li>
                            @endforeach
                        </ul>
                        @endif
                    </div>
                    <!-- <a class="vk-img vk-img--mw100" href="#">
                        <img src="images/ads-1.jpg" alt="">
                    </a> -->
                    <div class="vk-heading vk-heading--style-1 pt-30">
                        <h3 class="vk-heading__title">Tất cả</h3>
                        <div class="vk-sort">
                            <span>Hiển thị tài liệu theo:</span>
                            <select class="form-control" id="sort_document" name="sort" data-nice-select="">
                                <option value="desc" {{ isset($sort) && $sort == 'desc' ? 'selected' : '' }} >Mới đến cũ</option>
                                <option value="asc" {{ isset($sort) && $sort == 'asc' ? 'selected' : '' }}>Cũ đến mới</option>
                            </select>
                        </div>
                    </div>
                    <div class="vk-shop__list row">

                        @foreach($data_hot as $hot)
                        <div class="col-6 col-sm-6 col-md-3 col-lg-3 _item">
                            <div class="vk-shop-item vk-shop-item--style-1">
                                <a href="{{ url('tai-lieu/'.$hot->alias.'.html') }}" title="{{$hot->name}}" class="vk-img vk-img--cover">
                                    <img src="{{asset('upload/product/'.$hot->photo)}}" alt="{{$hot->name}}" class="vk-img__img">
                                </a>

                                <div class="vk-shop-item__brief">
                                    <h3 class="vk-shop-item__title" data-truncate-lines="2"><a href="{{ url('tai-lieu/'.$hot->alias.'.html') }}" title="{{$hot->name}}">{{$hot->name}}</a></h3>
                                    <ul class="vk-shop-item__meta">
                                        <li><i class="ti-eye"></i> {{ $hot->views }}</li>
                                        <li><i class="ti-import"></i> {{$hot->download}}</li>
                                    </ul>
                                </div>
                            </div> <!--./vk-shop-item-->
                        </div>
                        @endforeach
                        <div class="col-md-6 col-lg-6 _item">
                            <div class="vk-shop-item vk-shop-item--style-2">
                                <a href="#" class="vk-img vk-img--mw100">
                                    <img src="{{ asset('upload/banner/'.$banner_doc1->image)}}" alt="">
                                </a>
                            </div>

                        </div> <!--./item-->

                        @foreach($data as $item)
                        <div class="col-6 col-sm-6 col-md-3 col-lg-3 _item">
                            <div class="vk-shop-item vk-shop-item--style-1">
                                <a href="{{ url('tai-lieu/'.$item->alias.'.html') }}" title="{{$item->name}}" class="vk-img vk-img--cover">
                                    <img src="{{asset('upload/product/'.$item->photo)}}" alt="{{$item->name}}" class="vk-img__img">
                                </a>
                                <div class="vk-shop-item__brief">
                                    <h3 class="vk-shop-item__title" data-truncate-lines="2"><a href="{{ url('tai-lieu/'.$item->alias.'.html') }}" title="{{$item->name}}">{{$item->name}}</a></h3>
                                    <ul class="vk-shop-item__meta">
                                        <li><i class="ti-eye"></i> {{ $item->views }}</li>
                                        <li><i class="ti-import"></i> {{ $item->download }}</li>
                                    </ul>
                                </div>
                            </div> <!--./vk-shop-item-->
                        </div>
                        @endforeach

                    </div>


                    <nav class="vk-pagination">
                        <div class="paginations">
                            {!! $data->links() !!}
                        </div>
                        <!-- <ul class="vk-list vk-list--inline vk-pagination__list">
                            <li class="vk-list__item active"><a href="#" title="">1</a></li>
                            <li class="vk-list__item"><a href="#" title="">2</a></li>
                            <li class="vk-list__item"><a href="#" title="">3</a></li>
                            <li class="vk-list__item"><a href="#" title="">4</a></li>
                        </ul> -->
                    </nav>
                </div>
                
                <div class="col-lg-3 pt-50 pt-lg-0 col-xl-3--self">
                    <div class="vk-sidebar">
                        <div class="vk-sidebar__box">
                            <h2 class="vk-sidebar__title">Chủ đề liên quan</h2>
                            <ul class="vk-sidebar__list vk-sidebar__list--blog">
                                @foreach($cate_pro as $category)
                                <li><a href="{{url('tai-lieu/'.$category->alias)}}"> {{$category->name}}</a></li>
                                @endforeach
                            </ul>

                        </div>

                        @include('templates.layout.sidebar')
                    </div> <!--./sidebar-->
                </div> <!--./col-->
            </div> <!--./row-->

        </form>
    </div> <!--./container-->


</section>
<!--./content-->
<div class="vk-img vk-img--mw100 pt-30">
    <img src="{{ asset('upload/banner/'.$banner_doc->image)}}" alt="">
</div>
@endsection
