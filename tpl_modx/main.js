/**
 * file for modification site  
*/

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

    /*$(document).on('click touch', '.colours-wrapper-product > li.list-inline-item', function () {

        //remove class active
        $(this).parent().children().each(function (e) {
            $(this).find('label').removeClass('active');
        });

        //Add active class
        $(this).find('label').addClass('active');

        //get attrs of price
        var _input = $(this).find('input').val();

        //obj from JSON(str)
        _input = JSON.parse(_input);

        //change price in tag
        $('.msoptionsprice-cost-price', document).html(_input.price);

        //cancel 2 events
        return false;

    });*/


});

