    <div class="row">
        <div id="msCart" class="col scroll-x">

            {if !count($products)}
            <div class="alert alert-info">
                {'ms2_cart_is_empty' | lexicon}
            </div>
            {else}

            <table class="table table-borderless">
                <thead class="border-bottom">

                <tr>
                    <th scope="col">Товар</th>
                    <th scope="col" class="text-center">Количество</th>
                    <th scope="col" class="text-center">Цена за единицу</th>
                    <th scope="col">Сумма</th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody>
                {foreach $products as $product}
               {* <pre>
                     {$products | var_dump}</pre>*}
                    <tr id="{$product.key}">
                        <th scope="row" style="max-width: 220px">
                            <div class="card flex-row border-0">
                                <div class="col d-none d-md-block px-0">
                                    {if $product.image}
                                        <img class="mx-auto img-fluid" src="{$product.image}"
                                             alt="{$product.pagetitle | htmlent}"  title="{$product.pagetitle | htmlent}"/>
                                    {else}
                                        <img class="mx-auto img-fluid" src="{$_modx->getPlaceholder('+conf_noimage')}"
                                             alt="{$product.pagetitle | htmlent}" title="{$product.pagetitle | htmlent}"/>
                                    {/if}
                                </div>
                                <div class="col px-0">
                                    <div class="card-body py-0">
                                        <a href="{$product.id | url}"
                                           class="h6 card-title stretched-link mb-3">{$product.article | htmlent}-{$product.longtitle | htmlent}</a>

                                        <ul class="list-unstyled">
                                            {if $product.size[0]}
                                                <li class="fonts-size-12 mt-1"><span>Размер:</span><span
                                                            class="float-right">{$product.size[0] | htmlent}</span>
                                                </li>
                                            {/if}
                                            
                                            {if $product.quantity[0]}
                                                <li class="fonts-size-12 mt-1"><span>Штук в м2:</span><span
                                                            class="float-right">{$product.quantity[0] | htmlent} штук</span>
                                                </li>
                                            {/if}
                                            
                                            <!--colors-->
                                            <li class="fonts-size-12 mt-1">
                                                {set $modopt = $_modx->runSnippet("!msOptionsColor",[
                                                    "options" => "color",
                                                    'tpl' => "@FILE chunks/tpl_colors.tpl",
                                                    'product' => $product.id,
                                                    'byOptions' => json_encode($product.options),
                                                    'toPlaceholder' => 'result',
                                                    'return' => 'data'
                                                    ])}
                                                    
                                                {if $modopt}
                                                <span>Цвет:</span>
                                                {/if}
                                                
                                                <span class="float-right">
                                                    <ul class="list-inline mb-0 colours-wrapper ">
                                                        
                                                        {foreach $modopt as $row index=$index}
                                                        {set $all = "all"}
                                                            {if $row}
                                                                <li class="list-inline-item m-0">
                                                                    <label for="colour"
                                                                    {if $row["name"] != $all}
                                                                     style="background-color:#{$row["color"]}"
                                                                     {else}
                                                                     style="background: radial-gradient(circle, rgba(255,4,0,1) 0%, rgba(254,255,0,1) 14%, rgba(0,255,37,1) 28%, rgba(70,86,252,1) 49%, rgba(222,70,252,1) 67%, rgba(252,219,70,1) 93%);"
                                                                     {/if}
                                                                    class="btn-colour border-r50 p-2"> </label>
                                                                    <input type="hidden" name="options[colour]" value="{$row["value"]}" id="colour"
                                                                           class="inut-invisible">
                                                                </li> <!--/colors-->
                                                            {/if}
                                                        {/foreach}      
                                                    </ul>
                                                </span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </th>
                        <td class="count text-center">
                            <!--class="ms2_form"-->
                            <form method="post" class="ms2_form" role="form">
                                <input type="hidden" name="key" value="{$product.key}">
                                <input class="price" type="hidden" name="price" value="{$product.price}">
                                
                                
                                
                                <div class="btn-group quantity buttons_added border le-quantity">
                                        <button type="submit" class="btn button-minus border-r0 text-gray d-block focus-none"  name="ms2_action" value="cart/change">
                                            - </button>
                                            <input type="text" step="1" min="1" max="" name="count" value="{$product.count}" title="number" style="width: 100px;"
                                               class="text-center border-0 input-text quantity-field qty text form-control focus-none counter" size="4" pattern="" inputmode="">
                                        <button type="submit" class="btn button-plus border-r0 text-gray d-block focus-none"  name="ms2_action" value="cart/change"
                                        >
                                            +
                                        </button>
                                </div>
                                <button class="btn btn-sm" type="submit" name="ms2_action" value="cart/change">&#8635;</button>
                            </form>
                        </td>
                        <td class="price text-center"><span class="text-nowrap">{$product.price}</span> {'ms2_frontend_currency' | lexicon}
                            {if $product.old_price}
                                <span class="old_price text-nowrap">{$product.old_price}</span> {'ms2_frontend_currency' | lexicon}
                            {/if}</td>
                        <td class="px-0" style="width: 100px">
                           <span class="cost">{$product.cost}</span> {$_modx->lexicon('ms2_frontend_currency')}</td>
                        <td class="remove">
                            <form method="post"  class="ms2_form">
                                <input type="hidden" name="key" value="{$product.key}">
                                <button type="submit" class="btn btn-outline-danger border-0 border-r0" name="ms2_action" value="cart/remove" title="Удалить">
                                    <i class="icon trash-icon"></i></button>
                            </form>
                        </td>
                    </tr>
                 
                {/foreach}
                <tr class="footer border-top">
                    <th class="total">{'ms2_cart_total' | lexicon}:</th>
                    <th class="total_count text-center">
                        <span class="ms2_total_count">{$total.count}</span>
                        {'ms2_frontend_count_unit' | lexicon}
                    </th>
                    <th class="total_weight text-nowrap">
                        <input type="hidden" value="{$total.weight}">
                    </th>
                    <th class="total_cost text-nowrap pl-0" colspan="2">
                        <input type="hidden" value="{$total.cost}">
                        <span class="ms2_total_cost">{$total.cost}</span>
                        {'ms2_frontend_currency' | lexicon}
                    </th>
                </tr>
                </tbody>
            </table>
            {/if}
        </div>
    </div>
    <div class="row">
        <div class="col-12 footer">
            {$_modx->runSnippet("!msOrder",[
                    'tpl' => '@FILE chunks/tpl_order.tpl'
            ])}
        </div>
    </div>

    


