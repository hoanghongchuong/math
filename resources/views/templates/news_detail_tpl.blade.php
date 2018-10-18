@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $banner_detail_news = DB::table('banner_content')->where('position', 8)->first();
?>
 <section class="vk-content">
        <div class="vk-breadcrumb">
            <nav class="container">
                <ul class="vk-breadcrumb__list">
                    <li><a href="{{url('')}}">Trang chủ</a></li>
                    <li><a href="{{url('tin-tuc')}}">Tin tức</a></li>

                    <li class="active">{{$data->name}}</li>
                </ul>
            </nav>
        </div>
        <!--./vk-breadcrumb-->    
        <div class="container">
            <div class="row vk-blog-detail__row">
                <div class="col-lg-9 col-xl-9--self">
                    <div class="vk-blog__wrapper">

                        <h1 class="vk-page__title vk-page__title--blog-detail mb-0">{{$data->name}}</h1>
                        <ul class="vk-blog-detail__meta">
                            <li>
                                <div class="vk-blog-detail__date">Ngày đăng: {{date('d/m/Y', strtotime($data->created_at))}}</div>
                            </li>
                            <li>
                                <div class="vk-share">
                                    
                                    <div class="fb-like" data-href="{{URL::Current()}}" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                                </div>
                            </li>

                        </ul>
                        <div class="vk-blog-detail__brief">
                            {!! $data->content !!}
                            <div class="vk-blog__relate mt-50">
                                <h2 class="vk-blog__title vk-blog__title--relate">Bài viết liên quan</h2>
                                <ul class="vk-blog__relate-list">
                                    @foreach($baiviet_khac as $blog)
                                    <li><a href="{{url('tin-tuc/'.$blog->alias.'.html')}}">{{$blog->name}} ({{date('d/m/Y', strtotime($blog->created_at))}})</a></li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                        <div class="vk-blog-detail__content">                            
                            
                        </div>

                    </div>
                </div> <!--./col-->

                <div class="col-lg-3 pt-50 pt-lg-0 col-xl-3--self">
                    <div class="vk-sidebar">

                        @include('templates.layout.sidebar')
                    </div> 
                </div>
            </div>
        </div> <!--./container-->
    </section>
    <!--./content-->
    <div class="vk-img vk-img--mw100 pt-30">
        <img src="{{asset('upload/banner/'.@$banner_detail_news->image)}}" alt="">
    </div>

@endsection

