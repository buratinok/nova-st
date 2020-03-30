const $increaseImages = function() {

    $(document).ready(function() {
        $("#lightgallery").lightGallery({
            selector: '.item',
            thumbnail: false,
            share: false,
            autoplay: false,
            zoom: false,
            autoplayFirstVideo: false,
            videojs: false,
            fullScreen: false,
            hash: false
        }); 
    });
}

export default $increaseImages;