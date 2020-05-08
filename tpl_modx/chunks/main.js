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
            var $trPrice = $(this).find('input.price').val();
            var $trCounter = $(this).find('input.counter').val();
            var $trCost = $tr.find('.cost');

            var $priceCost = $trPrice * $trCounter;

            $trCost.html($priceCost);
        }

    });
    var $totalWeight = $('.total_weight input').val();
    $('.ms2_total_weight').each().html($totalWeight);
})
/**
 * color select in product page
 * */

// var $btnColour = document.querySelectorAll('.btn-colour');
//
//
// $btnColour.forEach(function (e) {
//
//     e.addEventListener('click', function (el) {
//         $btnColour.forEach(function (element) {
//             element.classList.remove('active');
//         });
//         this.classList.add('active');
//     })
// });
//

/* $(document).on('click touch', '.colours-wrapper-product > li.list-inline-item', function (event) {

     //remove class active
     $(this).parent().children().each(function (e) {
         $(this).find('label').removeClass('active');
         //set attrs of checked
         $(this).find('input').prop('checked', false);
     });

     //Add active class
     $(this).find('label').addClass('active');

     //Add checked
     $(this).find('input').prop('checked', true);

     //get attrs of price
     var _input = $(this).find('input').val();

     //obj from JSON(str)
     _input = JSON.parse(_input);

     //change price in tag
     $('.msoptionsprice-cost', document).html(_input.price);

     //cancel 2 events
     return false;

 })

});*/

