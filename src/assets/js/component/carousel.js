

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
        loopedSlides: 2, //looped slides should be the same
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
        navigation: {
            nextEl: '.control-product__next',
            prevEl: '.control-product__prev',
        },
    });
    var galleryTop = new Swiper('.gallery-top', {
        spaceBetween: 10,
        loop:true,
        loopedSlides: 2, //looped slides should be the same
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

};

export default $carouselHeader;