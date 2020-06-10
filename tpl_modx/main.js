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
    if ($('.delivery').find('#delivery_2').is(":checked")) {
        //input
        var $totalDelivery = $('#ms2_total_price_delivery').val();

        $('.ms2_total_price_delivery').each(function () {
            $(this).html($totalDelivery);
        })

    }

    if ($('#delivery_2').is(":checked")) {
        $('.text_delivery').text('Доставка ');
    }
    if ($('#delivery_3').is(":checked")) {
        $('.ms2_total_price_delivery').text('0 ');
    }
    
    $('#delivery_3').click(function() {
        $('.ms2_total_price_delivery').html('0');
        $('.text_delivery').text('Самовывоз ');
    });
     $('#delivery_2').click(function() {
        var $totalDelivery = $('#ms2_total_price_delivery').val();
        $('.ms2_total_price_delivery').html($totalDelivery);
        $('.text_delivery').text('Доставка ');
    });
    
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
    
    
    var $url = document.location.href;
    
    $(document).on('click touch', '.colours-wrapper-product > li.list-inline-item', function (event) {
       
        //remove class active
        $(this).parent().children().each(function (e) {
            $(this).find('label').removeClass('active');
        });
    
        //Add active class
        $(this).find('label').addClass('active');
    
    
         var $colorTitle=$(this).find('label').attr("title");
    
         $('.color-title').each(function () {
                $(this).html($colorTitle);
         });
    
        //remove from string $loc
        var $loc = $(this).find('label').attr('data-title-url');
         
        $url = $url.replace($loc, '');
            
        //change url
        window.history.pushState($(this).attr('id'), "Title", $url + $loc);
     
     
    })
    
    //get string 'search' in url
    var $searchWord = $(location).attr('search');
    
        $searchWord = $searchWord.slice(7);
        
    // "click" btn  hasClass  $searchWord
    if($('label.btn-colour').hasClass($searchWord)){
        $('.'+$searchWord).trigger( "click" );
    }
    if($('label.btn-colour.grey').hasClass('active')){
        $('label.btn-colour.grey').trigger( "click" );
    }

    //color && price #oneClick_modal
    $('#oneClick_modal').on('shown.bs.modal', function () {
        var $colorModal = $('label.active').attr("title"),
            $priceModal = $('span.msoptionsprice-cost').text();
        $('#msCart p.color-title').text($colorModal);
        $('#price_cou').text($priceModal);
        $('#msCart input.color_modal').val($colorModal);
    })
});


//ajax sort
var $selectSort = document.querySelector('#clearBacket');
//проверяем наличие обекта
if ($btnClear) {
    //перебераем обекты
    $btnClear.addEventListener('click', () => {
        //создаем новый обект
        var ajax = new XMLHttpRequest();
        //конфигурируем делаем запрос
        ajax.open("POST", $siteURL + "modules/basket/clear-basket.php", true);
        //устранавливаем значение http заголовка
        ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        //ждем загрузки и выполняем код
        ajax.onload = function () {
            /*location.assign($siteURL);*/
        };
        //отправка запроса
        ajax.send();

    });

}