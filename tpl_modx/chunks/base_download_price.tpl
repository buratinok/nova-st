
{ignore}
<script>
$(document).on('af_complete', function(event, response) {
    var form = response.form;
    if (response.success) {
        if (form.attr('id') == 'price_download' ) {
            $('#price_download').modal('hide');
            
    	    $( "<a></a>", {
    	    "id": "created_link",
            "text": "Download",
    	    "download": 1,
    	    "css":{"display":"none"},
    	    "href": '[[++price_file]]'
    	    }).appendTo( "body" );
                
            setTimeout(() => {
                $('#created_link')[0].click();			
            }, 1000);			
        }
    }
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
    $("#hash3").lightGallery({
        thumbnail: false,
        share: false,
        zoom: false,
        fullScreen: false,
        download: false,
        hash: true,
        galleryId: 3
    });
});
</script>
{/ignore}
