

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

};

export default $carouselHeader;