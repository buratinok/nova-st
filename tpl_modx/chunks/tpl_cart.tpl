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
                    <th scope="col">Количество</th>
                    <th scope="col">Цена за единицу</th>
                    <th scope="col">Сумма</th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody>
                {foreach $products as $product}
               {* <pre>
                     {$products | var_dump}</pre>*}
                    <tr id="{$product.key}">
                        <th scope="row">
                            <div class="card flex-row border-0">
                                <div class="col-3 d-none d-md-block">
                                    {if $product.image}
                                        <img class="mx-auto img-fluid" src="{$product.image}"
                                             alt="{$product.pagetitle | htmlent}"/>
                                    {else}
                                        <img class="mx-auto img-fluid" src="{$_modx->getPlaceholder('+conf_noimage')}"
                                             alt="{$product.pagetitle | htmlent}"/>
                                    {/if}
                                </div>
                                <div class="col col-lg-6">
                                    <div class="card-body py-0">
                                        <a href="{$product.id | url}"
                                           class="h6 card-title stretched-link mb-3">{$product.article | htmlent}-{$product.pagetitle | htmlent}</a>

                                            <ul class="list-unstyled">
                                                <li class="fonts-size-12 mt-1"><span>Размер:</span><span
                                                            class="float-right">{$product.size[0] | htmlent}</span>
                                                </li>
                                                {if $product.quantity[0] }
                                                <li class="fonts-size-12 mt-1"><span>Штук в м2:</span><span
                                                            class="float-right">{$product.quantity[0] | htmlent} штук</span>
                                                </li>
                                                {/if}
                                                <li class="fonts-size-12 mt-1"><span>Цвет:</span><span
                                                            class="float-right">

                                                    <ul class="list-inline mb-0 colours-wrapper ">
                                                        {set $modopt = $_modx->runSnippet("!msOptionsColor",["options" => "color",
                                                        'tpl' => "@FILE chunks/tpl_colors.tpl",
                                                        'product' => $product.id,
                                                        'byOptions' => json_encode($product.options),
                                                        'toPlaceholder' => 'result',
                                                        'return' => 'data'
                                                        ])}
                                                              {foreach $modopt as $row}
                                                              {if $row}
                                                         <!--colors-->
                                                          <li class="list-inline-item m-0">
                                                               <label for="colour" style="background-color:#{$row["color"]}" class="btn-colour border-r50 p-2"> </label>
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
                        <td class="count">
                            <!--class="ms2_form"-->
                            <form method="post" class="ms2_form" role="form">
                                <input type="hidden" name="key" value="{$product.key}">
                                <input class="price" type="hidden" name="price" value="{$product.price}">
                                
                                
                                
                                <div class="btn-group quantity buttons_added border le-quantity">
                                        <button type="submit" class="btn button-minus border-r0 text-gray d-block"  name="ms2_action" value="cart/change">
                                            - </button>
                                            <input type="number" step="1" min="1" max="" name="count" value="{$product.count}" title="number"
                                               class="text-center border-0 input-text quantity-field qty text form-control counter" size="4" pattern="" inputmode="">
                                        <button type="submit" class="btn button-plus border-r0 text-gray d-block"  name="ms2_action" value="cart/change"
                                        >
                                            +
                                        </button>
                                </div>
                                <button class="btn btn-sm" type="submit" name="ms2_action" value="cart/change">&#8635;</button>
                            </form>
                        </td>
                        <td class="price"><span class="mr-2 text-nowrap">{$product.price}</span>{'ms2_frontend_currency' | lexicon}
                            {if $product.old_price}
                                <span class="old_price text-nowrap">{$product.old_price}</span>{'ms2_frontend_currency' | lexicon}
                            {/if}</td>
                        <td>
                           <span class="cost">{$product.cost}</span>{$_modx->lexicon('ms2_frontend_currency')}</td>
                        <td class="remove">
                            <form method="post"  class="ms2_form">
                                <input type="hidden" name="key" value="{$product.key}">
                                <button type="submit" class="btn btn-outline-danger border-0 border-r0" name="ms2_action" value="cart/remove" title="Удалить">
                                    <i class="icon trash-icon"></i></button>
                            </form>
                        </td>
                    </tr>
                 
                {/foreach}
                <tr class="footer">
                    <th class="total">{'ms2_cart_total' | lexicon}:</th>
                    <th class="total_count">
                        <span class="ms2_total_count">{$total.count}</span>
                        {'ms2_frontend_count_unit' | lexicon}
                    </th>
                    <th class="total_weight text-nowrap">
                        <input type="hidden" value="{$total.weight}">
                    </th>
                    <th class="total_cost text-nowrap" colspan="2">
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
            {$_modx->runSnippet("!msGetOrder",[
            'tpl' => '@FILE chunks/tpl_getorder.tpl'
            ])}
        </div>
    </div>

    


