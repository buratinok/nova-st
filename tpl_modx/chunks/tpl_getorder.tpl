<div class="alert alert-success" role="alert">
    <p>Уважаемый покупатель! Ваш заказ успешно оформлен и поставлен в очередь на обработку. В ближайшее время с вами
        свяжется наш специалист для уточнения деталей заказа. Заказу был присвоен номер:</p>
    <div class="text-center">
        <h3 class="text-white">{$order.num}</h3>
    </div>
</div>
<button type="button" data-toggle="modal" data-target="#modalThanks"
                class="btn btn-outline-danger px-5 float-right">Спасибо за заказ!
</button>

<div id="msCart" class="msgetorder">
    <div class="table-responsives">
        <table class="table table-striped">
            <tr class="header">
                <th class="image"> </th>
                <th class="title">{'ms2_cart_title' | lexicon}</th>
                <th class="count">{'ms2_cart_count' | lexicon}</th>
                <th class="price">{'ms2_cart_cost' | lexicon}</th>
            </tr>
            {foreach $products as $product}
                <tr>
                    <td class="image">
                        {if $product.image?}
                            <img src="{$product.image}" alt="{$product.pagetitle | htmlent}" title="{$product.pagetitle | htmlent}" width="40"/>
                        {else}
                            <img src="{$_modx->getPlaceholder('+noimage')}" alt="{$product.pagetitle | htmlent}" title="{$product.pagetitle | htmlent}"  width="40"/>
                        {/if}
                    </td>
                    <td class="title">
                        {if $product.id?}
                            <a href="{$product.id | url}">{$product.name}</a>
                        {else}
                            {$product.name}
                        {/if}
                        {if $product.options?}
                            <div class="small">
                                {$product.options | join : '; '}
                            </div>
                        {/if}
                    </td>
                    <td class="count">{$product.count} {'ms2_frontend_count_unit' | lexicon}</td>
                    <td class="price">{$product.price} {'ms2_frontend_currency' | lexicon}</td>
                </tr>
            {/foreach}
            <tr class="footer">
                <th class="total" colspan="2">{'ms2_cart_total' | lexicon}:</th>
                <th class="total_count">
                    <span class="ms2_total_count">{$total.cart_count}</span> {'ms2_frontend_count_unit' | lexicon}
                </th>
                <th class="total_cost">
                    <span class="ms2_total_cost">{$total.cart_cost}</span> {'ms2_frontend_currency' | lexicon}
                </th>
            </tr>
        </table>
    </div>

    <h4>
        {'ms2_frontend_order_cost' | lexicon}:
        {if $total.delivery_cost}
            {$total.cart_cost} {'ms2_frontend_currency' | lexicon} + {$total.delivery_cost}
            {'ms2_frontend_currency' | lexicon} =
        {/if}
        <strong>{$total.cost}</strong> {'ms2_frontend_currency' | lexicon}
    </h4>
</div>