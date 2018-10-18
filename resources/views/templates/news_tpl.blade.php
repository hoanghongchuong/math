@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $banner1 = DB::table('banner_content')->where('position', 3)->first();
    $banner2 = DB::table('banner_content')->where('position', 4)->first();
    $banner3 = DB::table('banner_content')->where('position', 5)->first();
?>
<section class="vk-content">
    <div class="vk-breadcrumb">
        <nav class="container">
            <ul class="vk-breadcrumb__list">
                <li><a href="{{url('')}}">Trang chủ</a></li>

                <li class="active">Tin tức</li>
            </ul>
        </nav>
    </div>
    <!--./vk-breadcrumb-->    
    <div class="container">
        <h1 class="vk-page__title">Tin tức</h1>
        <div class="vk-blog__top">
            <div class="row">
                <div class="col-lg-9">
                    <div class="row vk-blog__list">

                        <div class="col-12 _item">
                            <div class="vk-blog-item vk-blog-item--style-2">
                                <a href="{{ url('tin-tuc/'.$hot_news->alias.'.html') }}" title="{{$hot_news->name}}" class="vk-img vk-img--cover">
                                    <img src="{{asset('upload/news/'.$hot_news->photo)}}" alt="{{$hot_news->name}}" class="vk-img__img">
                                    <div class="vk-blog-item__date">
                                        <div class="_day">{{date('d', strtotime($hot_news->created_at))}}</div>
                                        <div class="_month _year">{{date('m/Y', strtotime($hot_news->created_at))}}</div>
                                    </div>
                                </a>

                                <div class="vk-blog-item__brief">
                                    <h3 class="vk-blog-item__title"><a href="{{ url('tin-tuc/'.$hot_news->alias.'.html') }}" title="{{$hot_news->name}}">{{$hot_news->name}}</a></h3>
                                    <div class="vk-blog-item__text" data-truncate-lines="4">{{$hot_news->mota}}</div>

                                    <a href="{{ url('tin-tuc/'.$hot_news->alias.'.html') }}" class="vk-btn vk-btn--grey-2">Xem thêm <i class="ti-arrow-right ml-5"></i></a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <a href="{{$banner1->link}}" class="vk-img vk-img--mw100">
                        <img src="{{ asset('upload/banner/'.@$banner1->image)}}" alt="">
                    </a>
                </div>
            </div>
        </div>
        <div class="vk-img vk-img--mw100 pt-20">
            <img src="{{ asset('upload/banner/'.$banner2->image)}}" alt="">
        </div>
        <div class="vk-blog__bot"></div>
        <div class="vk-blog__list row">
            @foreach($tintuc as $item)
            <div class="col-sm-6 col-md-4 col-lg-4 _item">
                <div class="vk-blog-item vk-blog-item--style-1">
                    <a href="{{ url('tin-tuc/'.$item->alias.'.html') }}" title="{{$item->name}}" class="vk-img vk-img--cover">
                        <img src="{{asset('upload/news/'.$item->photo)}}" alt="{{$item->name}}" class="vk-img__img">
                        <div class="vk-blog-item__date">
                            <div class="_day">{{date('d', strtotime($item->created_at))}}</div>
                            <div class="_month _year">{{date('m/Y', strtotime($item->created_at))}}</div>
                        </div>
                    </a>
                    <div class="vk-blog-item__brief">
                        <h3 class="vk-blog-item__title"><a href="{{ url('tin-tuc/'.$item->alias.'.html') }}" title="{{$item->name}}">{{$item->name}}</a></h3>
                        <div class="vk-blog-item__text" data-truncate-lines="2">{!! $item->mota !!}</div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
        <nav class="vk-pagination">
            {!! $tintuc->links() !!}
        </nav>
    </div>
</section>
<div class="vk-img vk-img--mw100 pt-30">
    <img src="{{ asset('upload/banner/'.@$banner3->image)}}" alt="">
</div>
@endsection