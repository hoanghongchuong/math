@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
?>
<section class="vk-content">
    <div class="vk-breadcrumb">
        <nav class="container">
            <ul class="vk-breadcrumb__list">
                <li><a href="{{url('')}}">Trang chủ</a></li>
                <li><a href="#">Tài liệu</a></li>

                <li class="active">{{$product_detail->name}}</li>
            </ul>
        </nav>
    </div>
    <!--./vk-breadcrumb-->    
    <div class="container">
        <div class="row vk-blog-detail__row">
            <div class="col-lg-9 col-xl-9--self">
                <div class="vk-blog__wrapper">

                    <h1 class="vk-page__title vk-page__title--blog-detail mb-0">{{$product_detail->name}}</h1>
                    <div class="vk-blog-detail__meta-box">
                        <div class="_left">
                            <ul class="vk-blog-detail__meta">
                                <li>
                                    <div class="vk-blog-detail__date">Ngày đăng: {{date('d/m/Y', strtotime($product_detail->created_at))}}</div>
                                </li>
                                <li>
                                    Loại file: <span class="vk-text--blue-1">PDF</span>
                                </li>

                            </ul>

                            <div class="vk-share">                                
                                <div class="fb-like" data-href="{{URL::Current()}}" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                            </div>
                        </div> <!--./left-->
                        <div class="_right">
                            <div class="vk-count__list">
                                <div class="vk-count-item vk-count-item--style-1">
                                    <div class="vk-count-item__number">
                                        <span class="vk-countto" data-from="0" data-to="{{$product_detail->views}}"></span>
                                    </div>
                                    <div class="vk-count-item__text">lượt xem</div>
                                </div>
                                <div class="vk-count-item vk-count-item--style-1">
                                    <div class="vk-count-item__number">
                                        <span class="count-download">{{$product_detail->download}}</span>
                                    </div>
                                    <div class="vk-count-item__text">lượt tải</div>
                                </div>
                            </div> <!--./list-->

                        </div> <!--./right-->

                    </div>

                    <!-- <a href="#" class="vk-img vk-img--mw100 pt-20">
                        <img src="images/ads-1.jpg" alt="">
                    </a> -->


                    <div class="vk-blog-detail__content pt-20">
                        <!-- <iframe src="{{ asset('upload/document/'.$product_detail->document) }}" frameborder="0"></iframe> -->
                        <iframe src="{{route('read.file', $product_detail->id)}}" frameborder="0"></iframe>



                    </div> <!--./content-->

                    <div class="vk-blog-detail__bot pt-50">
                        <div class="row">
                            <div class="col-lg-9">
                                <h5>{{$product_detail->name}}</h5>
                                <p>
                                    {!! $product_detail->mota !!}
                                </p>
                            </div>
                            <div class="col-lg-3 pt-50 pt-lg-0 text-center">
                                <a href="{{ asset('upload/document/'.$product_detail->document) }}" download target="_blank" class="vk-btn vk-btn--orange-1 btn-block" id="btn-download" data-id="{{$product_detail->id}}"><i class="fa fa-download"></i>  Tải tài liệu</a>
                                <p class="mb-0 pt-10 vk-text--orange-1">Vui lòng tải xuống để xem tài liệu đầy đủ</p>
                            </div>
                        </div>


                    </div>

                </div> <!--./wrapper-->

                <div class="vk-blog__relate pt-50">
                    <h2 class="vk-page__title">Tài liệu liên quan</h2>
                    <div class="vk-doc__list vk-slider--style-1" data-slider="relate">
                        @foreach($otherDocument as $orther)
                        <div class="_item">
                            <div class="vk-shop-item vk-shop-item--style-1">
                                <a href="{{ url('tai-lieu/'.$orther->alias.'.html') }}" title="{{$orther->name}}" class="vk-img vk-img--cover">
                                    <img src="{{asset('upload/product/'.$orther->photo)}}" alt="{{$orther->name}}" class="vk-img__img">
                                </a>
                                <div class="vk-shop-item__brief">
                                    <h3 class="vk-shop-item__title" data-truncate-lines="2"><a href="{{ url('tai-lieu/'.$orther->alias.'.html') }}" title="{{$orther->name}}">{{$orther->name}}</a></h3>
                                    <ul class="vk-shop-item__meta">
                                        <li><i class="ti-eye"></i> {{$orther->views}}</li>
                                        <li><i class="ti-import"></i> {{$orther->download}}</li>
                                    </ul>
                                </div>
                            </div> <!--./vk-shop-item-->
                        </div>
                        @endforeach
                    </div>
                </div>


            </div> <!--./col-->

            <div class="col-lg-3 pt-50 pt-lg-0 col-xl-3--self">
                <div class="vk-sidebar">
                    @include('templates.layout.sidebar')                    
                </div> <!--./sidebar-->
            </div> <!--./col-->
        </div> <!--./row-->


    </div> <!--./container-->


</section>

@endsection
