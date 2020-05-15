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
            var $priceCost = parseFloat($trPrice.replace(",",".").replace(/[^0-9.]/gim, "")) * $trCounter;

            //data output
            $trCost.html($priceCost);
        }

    });
    if ($('.delivery').find('#delivery_2').prop("checked")) {
        //input
        var $totalDelivery = $('#ms2_total_price_delivery').val();

        $('.ms2_total_price_delivery').each(function () {
            $(this).html($totalDelivery);
        })

    }

    $(document).on('click touch', '.form-group .delivery', function (event) {
        if ($(this).find('#delivery_2').prop("checked")) {
            //input
            var $totalDelivery = $('#ms2_total_price_delivery').val();
            //label
            var $labelDelivery = $(this).find("label").html();

            $('.ms2_total_price_delivery').each(function () {
                $(this).html($totalDelivery);
            })
            $('.text_delivery').each(function () {
                $(this).html($labelDelivery);
            })

        } else {
            //label
            var $labelDelivery = $(this).find("label").html();
            $('.ms2_total_price_delivery').each(function () {
                $(this).html('');
            })
            $('.text_delivery').each(function () {
                $(this).html($labelDelivery);
            })
        }

    })
        // caching data retrieval
        var $totalWeight = $('.total_weight').find('input').val();
        var $totalCost = $('.total_cost').find('input').val();



        $('.ms2_total_cost').html($totalCost);
        //enumeration and data output
        $('.ms2_total_weight').each(function () {
            $(this).html($totalWeight);
        })
        //enumeration and data output
        $('.ms2_total_cost').each(function () {
            $(this).html($totalCost);
        });


 $(document).on('click touch', '.colours-wrapper-product > li.list-inline-item', function (event) {

     //remove class active
     $(this).parent().children().each(function (e) {
         $(this).find('label').removeClass('active');
     });

     //Add active class
     $(this).find('label').addClass('active');

 })

});

