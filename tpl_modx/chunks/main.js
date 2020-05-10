/**
 * file for modification site
 */

$(document).ready(function () {

    $('.le-quantity button').click(function (e) {
        e.preventDefault();
        var elem = $(this).parent().parent().find('input.counter');
        var cost = $(this).parent().parent().find('input.price');
        var currentQty = elem.val();


        if ($(this).hasClass('button-minus') && currentQty > 0) {
            elem.val(parseInt(currentQty, 10) - 1);
            elem.trigger("change");
        } else {
            if ($(this).hasClass('button-plus')) {
                elem.val(parseInt(currentQty, 10) + 1);
                elem.trigger("change");
            }

        }
    });

    $('.ms2_form').on('submit', function (e) {
        e.preventDefault();
        var $tr = $(this).parent().parent();
        if ($tr.attr('id')) {
            //get objects
            var $trPrice = $(this).find('input.price').val();
            var $trCounter = $(this).find('input.counter').val();
            var $trCost = $tr.find('.cost');

            //cost calculation
            var $priceCost = $trPrice * $trCounter;

            //data output
            $trCost.html($priceCost);
        }

    });

    // caching data retrieval
    var $totalWeight = $('.total_weight').find('input').val();

    //enumeration and data output
    $('.ms2_total_weight').each(function(){
        $(this).html($totalWeight);
    })

 $(document).on('click touch', '.colours-wrapper-product > li.list-inline-item', function (event) {

     //remove class active
     $(this).parent().children().each(function (e) {
         $(this).find('label').removeClass('active');
     });

     //Add active class
     $(this).find('label').addClass('active');

   /*  //Add checked
     $(this).find('input').prop('checked', true);

     //get attrs of price
     var _input = $(this).find('input').val();

     //obj from JSON(str)
     _input = JSON.parse(_input);

     //change price in tag
     $('.msoptionsprice-cost', document).html(_input.price);*/

     //cancel 2 events
    /* return false;*/

 })

});

