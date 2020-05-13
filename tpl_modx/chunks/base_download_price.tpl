
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




</script>
{/ignore}
