@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $banner = DB::table('banner_content')->where('position', 2)->first();
?>
<section class="vk-content">
    <div class="vk-breadcrumb">
        <nav class="container">
            <ul class="vk-breadcrumb__list">
                <li><a href="{{url('')}}">Trang chủ</a></li>
                <li class="">Tìm kiếm</li>
            </ul>
        </nav>
    </div>
    <!--./vk-breadcrumb-->    
    <div class="container">
        <form action="" id="filter_products" method="get">
            <div class="row vk-blog-detail__row">                
                <div class="col-lg-9 col-xl-9--self">
                    <div class="vk-banner vk-banner--style-1">
                        <h1 class="vk-page__title vk-page__title--banner">Kết quả tìm kiếm: "{{$search}}"</h1>                        
                    </div>
                    <!-- <a class="vk-img vk-img--mw100" href="#">
                        <img src="images/ads-1.jpg" alt="">
                    </a> -->
                    <div class="vk-heading vk-heading--style-1 pt-30">
                        <h3 class="vk-heading__title">Tất cả</h3>
                        
                    </div>
                    <div class="vk-shop__list row">                       
                        
                        @foreach($result as $item)
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
                    
                </div>
                
                <div class="col-lg-3 pt-50 pt-lg-0 col-xl-3--self">
                    <div class="vk-sidebar">
                        

                        @include('templates.layout.sidebar')
                    </div> <!--./sidebar-->
                </div> <!--./col-->
            </div> <!--./row-->

        </form>
    </div> <!--./container-->


</section>
@endsection
