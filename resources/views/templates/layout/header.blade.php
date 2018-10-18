<?php
    $setting = Cache::get('setting');
    $categories = DB::table('product_categories')->where('parent_id',0)->get();
?>
<header class="vk-header">

    <div class="vk-header__mid">
        <div class="container">
            <div class="vk-header__mid-content">

                <div class="vk-header__mid-left">

                    <a href="{{url('')}}" class="vk-header__logo">
                        <img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="LOGO">
                    </a>
                    <a href="#mainMenu" class="vk-header__btn-menu vk-btn vk-btn--outline-green-1 d-none d-lg-inline-flex" data-toggle="menu"><i class="ti-layout-grid3-alt"></i></a>
                </div><!--./mid-left-->


                <div class="vk-header__mid-center">
                    <form action="{{ route('search') }}" method="get">
                        <div class="vk-header__search">
                            <div class="_cate-list">
                                <select class="form-control" name="category_document" data-nice-select>
                                    @foreach($categories as $cate)
                                    <option value="{{ $cate->id }}">{{$cate->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="vk-form vk-form--search">
                                <input type="text" class="form-control" name="search_name" placeholder="Tìm kiếm tài liệu">
                                <button class="vk-btn vk-btn--outline-green-1"><i class="ti-search"></i></button>
                            </div>
                        </div>
                    </form>
                </div> <!--./mid-->

                <div class="vk-header__mid-right">

                    <div class="vk-header__menu-mobile">
                        <!--<a href="#" class="vk-btn vk-btn&#45;&#45;orange-1" ><i class="fa fa-cloud-upload mr-10"></i> Upload file</a>-->
                    </div>


                    <div class="vk-header__menu-mobile d-lg-none">
                        <a href="#menu" class="vk-btn vk-btn--green-1 rounded-0 " data-menu ><i class="ti-menu"></i></a>
                    </div>

                </div>  <!--./mid-right-->

            </div>
        </div> <!--./container-->
    </div> <!--./mid-->
</header> <!--./vk-header-->
<div class="vk-menu" id="mainMenu">
    <div class="container h-100">
        <div class="vk-menu__wrapper h-100">
            <div class="vk-menu__content h-100">
                <ul class="vk-menu__main">
                    <li><a href="{{url('')}}"><i class="_icon fa fa-home"></i> Trang chủ</a></li>
                    <li><a href="{{url('gioi-thieu')}}"><i class="_icon fa fa-info-circle"></i> Giới thiệu</a></li>
                    <li>
                        <a href="{{url('tai-lieu')}}"><i class="_icon fa fa-file"></i> Tài liệu</a>
                        <ul class="vk-menu__child">
                            @foreach($categories as $cate)
                            <li><a href="{{url('tai-lieu/'.$cate->alias)}}"><i class="_icon fa fa-comments-o"></i>{{$cate->name}}</a></li>
                            @endforeach
                        </ul>
                    </li>
                    <li><a href="{{url('tin-tuc')}}"><i class="_icon fa fa-rss"></i> Tin tức</a></li>
                </ul>
                <div class="vk-menu__bot">
                    <div class="vk-menu__contact">
                        <p>Hotline:<a href="tel:{{$setting->phone}}"> <span>{{$setting->phone}}</span></a></p>
                        <p> Email: <a href="mailto:{{$setting->email}}">{{$setting->email}}</a></p>
                        <p> Website: <a href="{{$setting->website}}">{{$setting->website}}</a></p>
                    </div>
                    <div class="vk-menu__social">
                        <a href="{{ @$setting->skype }}"><i class="fa fa-skype"></i></a>
                        <a href="{{ @$setting->twitter }}"><i class="fa fa-twitter"></i></a>
                        <a href="{{ @$setting->facebook }}"><i class="fa fa-facebook"></i></a>
                        <!-- <a href="#"><i class="fa fa-google-plus"></i></a> -->
                        <a href="{{ @$setting->youtube }}"><i class="fa fa-youtube"></i></a>
                    </div>
                </div> <!--./bot-->

            </div>
        </div> <!--./wrapper-->

    </div>
</div>