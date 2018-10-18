'use strict';
function  sliderSync(sliderFor,sliderNav,settingFor,settingNav) {

    //variable
    var sync1 = sliderFor ? $(sliderFor) : $('#sync1');
    var sync2 = sliderNav ? $(sliderNav) : $('#sync2');


    //setting slider
    var setting1 = Object.assign(
        {
            items: 1,
            animateIn: 'fadeIn',
            animateOut: 'fadeOut',

            onChanged: syncPosition,
        },
        settingFor
    );

    var setting2 = Object.assign(
        {
            onInitialized: function (event) {
                $(event.target).find(".owl-item").eq(0).addClass("current");
            },
        },
        settingNav
    );


    //init slider
    sync1.owlCarousel(setting1);
    sync2.owlCarousel(setting2);


    function syncPosition(event) {
        var current = event.item.index;
        var currentItem = sync2.find('.owl-item').eq(current);

        sync2
            .find('.owl-item')
            .removeClass('current')
            .eq(current)
            .addClass('current');

        center(currentItem)
    }


    sync2.on("click", ".owl-item", function (e) {
        e.preventDefault();
        $(this).siblings().removeClass('current');
        $(this).addClass('current');
        var current = $(this).index();
        sync1.trigger("to.owl.carousel", [current, 300, true]);
        center(this);


    });

    function center(e) {
        var el = $(e);

        var current = el.index();
        var items = el.siblings('.owl-item').length + 1;
        var size = setting2.items;
        var currentActiveIndex = el.index('.active') - 3;

        // console.log("current",current);
        // console.log("currentActiveIndex",currentActiveIndex);
        // console.log("size",size);

        if(size > 2){
            if (currentActiveIndex === size - 1 && current < items) {
                sync2.trigger("to.owl.carousel", [current - size + 2, 300, true]);
            }
            if (currentActiveIndex === 0 && current > 0) {
                sync2.trigger("to.owl.carousel", [current - 1, 300, true]);
            }
        }else{
            sync2.trigger("to.owl.carousel", [current, 300, true]);
        }

    }

}