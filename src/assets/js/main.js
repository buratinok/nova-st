$(document).ready(function() {
    $('.le-quantity button').click(function(e){
        e.preventDefault();
        var elem = $(this).parent().parent().find('input.counter');
        var cost = $(this).parent().parent().find('input.price');
        var currentQty= elem.val();


        if( $(this).hasClass('button-minus') && currentQty>0){
            elem.val(parseInt(currentQty, 10) - 1);
            elem.trigger("change");
        }else{
            if( $(this).hasClass('button-plus')){
                elem.val(parseInt(currentQty, 10) + 1);
                elem.trigger("change");
            }

        }





    });
});