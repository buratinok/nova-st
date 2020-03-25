

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
};

export default $carouselHeader;