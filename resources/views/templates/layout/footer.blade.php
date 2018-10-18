<?php
    $setting = Cache::get('setting');
    $cate_pro = DB::table('product_categories')->where('status',1)->where('parent_id',0)->orderby('id','asc')->get();
?>
<footer class="vk-footer">
    <div class="vk-footer__top-before">
        <div class="container">
            <div class="top-before-content">
                <ul class="vk-menu__footer">
                    @foreach($cate_pro as $cate)
                    <li><a href="{{url('tai-lieu/'.$cate->alias)}}">{{$cate->name}}</a></li>
                    @endforeach
                </ul>
            </div>
        </div>

    </div>

    <div class="vk-footer__top">
        <div class="container">
            <div class="vk-footer__top-content row">
                <div class="col-lg-5">
                    <div class="vk-footer__item">
                        <a href="{{url('')}}" class="vk-footer__logo">
                            <img src="{{asset('upload/hinhanh/'.$setting->photo_footer)}}" alt="LOGO">
                        </a>
                        <ul class="vk-contact__list">
                            <li><i class="_icon fa fa-map-marker"></i> {{$setting->address}}</li>
                            <li><i class="_icon fa fa-phone"></i> <a href="tel:{{$setting->phone}}">{{$setting->phone}}</a>   -   <a href="tel:{{$setting->hotline}}">{{$setting->hotline}}</a></li>
                            <li><i class="_icon fa fa-envelope-o"></i> <a href="{{$setting->email}}">{{$setting->email}} </a>  <span class="d-inline-block pl-10 pr-10">-</span> <i class="fa fa-comments-o"></i> <a href="{{$setting->website}}"></a>{{$setting->website}}</li>
                        </ul>
                    </div> <!--./item-->
                </div> <!--./col-->
                <div class="col-lg-3">
                    <div class="vk-footer__item">
                        <h2 class="vk-footer__title">Hỗ trợ</h2>
                        <ul class="vk-footer__list">
                            <li><a href="#"> Câu hỏi thường gặp</a></li>
                            <li><a href="#"> Điều khoản sử dụng</a></li>
                            <li><a href="#"> Quy định chính sách bán tài liệu</a></li>

                        </ul>
                    </div> <!--./item-->
                </div> <!--./col-->


                <div class="col-lg-4">
                    <div class="vk-footer__item">
                        <h2 class="vk-footer__title">Liên kết mạng xã hội</h2>

                        <ul class="vk-list__icon vk-list__icon--style-1">
                            <li><a href="{{$setting->facebook}}"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="{{$setting->twitter}}"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="{{$setting->google}}"><i class="fa fa-google"></i></a></li>
                            <li><a href="{{$setting->skype}}"><i class="fa fa-skype"></i></a></li>
                        </ul>
                        <p>
                            Sản phẩm thuộc sở hữu của Cty Cổ phần Công nghệ và Truyền thông GCO
                        </p>
                    </div> <!--./item-->
                </div> <!--./col-->

            </div> <!--./top-content-->
        </div> <!--./container-->
    </div> <!--./top-->


</footer><!--./vk-footer-->

<nav class="" id="menu">
    <ul class="">
        <li><a href="{{url('')}}"><i class="_icon fa fa-home"></i> Trang chủ</a></li>
        <li><a href="{{url('gioi-thieu')}}"><i class="_icon fa fa-info-circle"></i> Giới thiệu</a></li>
        <li>
            <a href="{{url('tai-lieu')}}"><i class="_icon fa fa-file"></i> Tài liệu</a>
            <ul class="">
                @foreach($cate_pro as $cate)
                <li><a href="{{url('tai-lieu/'.$cate->alias)}}"><i class="_icon fa fa-comments-o"></i>{{$cate->name}}</a></li>
                @endforeach
            </ul>
        </li>
        <li><a href="{{url('tin-tuc')}}"><i class="_icon fa fa-rss"></i> Tin tức</a></li>

    </ul>
</nav>
