

const $carouselHeader = function () {
    var swiper = new Swiper('.swiper-home', {
        centeredSlides: true,
        slidesPerView: 'auto',
        loop: true,
        navigation: {
            nextEl: '.control-swiper__next',
            prevEl: '.control-swiper__prev',
        }
    });

    var swiperVideo = new Swiper('.swiper-video', {
        slidesPerView: 4,
        slidesPerColumn: 2,
        320: {
            slidesPerView: 2,
        },
        loop: true,
        centeredSlides: true,
        centeredSlidesBounds: true,
        pagination: {
            el: '.swiper-pagination',
            dynamicBullets: true,
        },
    });

    /*карусель страницы продуктов*/
    var galleryThumbs = new Swiper('.gallery-thumbs', {
        spaceBetween: 10,
        slidesPerView: 2,
        loop: true,
        freeMode: true,
        loopedSlides: 5, //looped slides should be the same
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
        navigation: {
            nextEl: '.control-product__next ',
            prevEl: '.control-product__prev',
        },

    });
    var galleryTop = new Swiper('.gallery-top', {
        spaceBetween: 10,
        autoplay: {
            delay: 5000,
        },
        loop:true,
        loopedSlides: 5, //looped slides should be the same
        navigation: {
            nextEl: '.control-product__next ',
            prevEl: '.control-product__prev',
        },
        thumbs: {
            swiper: galleryThumbs,
        },
    });


    /*карусель страницы продуктов укладка*/

    var swiperProductInfo = new Swiper('.product-info-product', {
        navigation: {
            nextEl: '.control-info__next',
            prevEl: '.control-info__prev',
        },
    });


    $("#video-gallery").lightGallery({
        share: false,
        zoom: false,
        fullScreen: false,
        hash: false
});

    $(document).ready(function () {
    var mySwiper = new Swiper ('.swiper-video_2', {
        slidesPerView: 2,
        slidesPerColumn: 2,
        loop: true,
        pagination: {
                el: '.swiper-pagination',
                dynamicBullets: true
        },

        breakpoints: {
        320: {
        slidesPerView: 2,
        },
        480: {
        slidesPerView: 3,
        },
        640: {
        slidesPerView: 4,
        }
    }
    })
    });

    $(document).ready(function() {
    $("#hash").lightGallery({
        thumbnail: false,
        share: false,
        zoom: false,
        fullScreen: false,
        download: false,
        hash: true,
        galleryId: 1
    });
    $("#hash2").lightGallery({
        thumbnail: false,
        share: false,
        zoom: false,
        fullScreen: false,
        download: false,
        hash: true,
        galleryId: 2
    });
    $('#product-thumbnials').lightGallery({
            thumbnail:true,            
            share: false,
            download: false,
            hash: true,
            animateThumb: false,
            showThumbByDefault: false
    });
    });
    $(document).ready(function() {
        $('#show_all a').click(function() {
            if ($('#collapseExample').hasClass('show')) {
                $('#show_all a').text('Показать все');
            } else {
                $('#show_all a').text('Свернуть');
            }
        });
    });
};

export default $carouselHeader;