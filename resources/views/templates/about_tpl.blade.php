@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $banner_about = DB::table('banner_content')->where('position', 9)->first();
?>
<section class="vk-content">
    <div class="vk-breadcrumb">
        <nav class="container">
            <ul class="vk-breadcrumb__list">
                <li><a href="{{url('')}}">Trang chủ</a></li>

                <li class="active">Giới thiệu</li>
            </ul>
        </nav>
    </div>
    <!--./vk-breadcrumb-->    
    <div class="container">
        <div class="row vk-blog-detail__row">
            <div class="col-lg-9 col-xl-9--self">


                <div class="vk-banner vk-banner--style-1">
                    <h1 class="vk-page__title vk-page__title--banner mb-10">MathX Doc - Kho tài liệu Toán học số 1 Việt
                        Nam</h1>

                </div> <!--./banner-->


                <div class="vk-blog__wrapper">
                    <div class="vk-blog__box">
                        <div class="vk-img vk-img--mw100">

                            <img src="{{ asset('upload/hinhanh/'.$about->photo)}}" alt="">
                        </div>
                        <div class="vk-blog__box-content">
                            {!! $about->mota !!}
                        </div>
                    </div>
                    <div class="vk-blog-detail__content pt-30">
                        <div class="_left">
                            <ul class="vk-list__icon vk-list__icon--style-3">
                                <li><a href="{{url('')}}"><i class="ti-home"></i></a></li>
                                <li><a href="{{@$setting->facebook}}" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            </ul>
                        </div> <!--./left-->
                        <div class="_right">
                            {!! $about->content !!}
                        </div> <!--./right-->
                    </div>
                </div>
            </div>
            <div class="col-lg-3 pt-50 pt-lg-0 col-xl-3--self">
                <div class="vk-sidebar">
                    @include('templates.layout.sidebar')
                </div> <!--./sidebar-->
            </div> <!--./col-->
        </div> <!--./row-->


    </div> <!--./container-->


</section>
<!--./content-->
<div class="vk-img vk-img--mw100 pt-30">
    <img src="{{asset('upload/banner/'.@$banner_about->image)}}" alt="">
</div>
@endsection
