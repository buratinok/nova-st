<div class="col mb-sm-3 px-0 px-sm-2">
    <div class="card border-r0 h-100">
        <div class="position-absolute py-3 d-flex flex-column z-2">
            {if $old_price>0}
                <span class="badge badge-danger text-left text-uppercase text-white border-l-r0 p-2 fonts-size-10"><i
                                                            class="label-icon mr-1"></i>Скидка {$str = (($old_price - $price)/$old_price)*100}%
                                                            </span>
            {/if}
            {if $popular}
                <span class="badge badge-gradient text-left text-uppercase text-white border-l-r0 mt-1 p-2 fonts-size-10"><i
                            class="fire-icon mr-1"></i>Хит!</span>
            {/if}
            {if $new}
                <span class="badge badge-gradient text-left text-uppercase text-white border-l-r0 mt-1 p-2 fonts-size-10"><i
                            class="fire-icon mr-1"></i>Новинки</span>
            {/if}
        </div>
        {if $image}
            <img class="mx-auto img-fluid" src="{$image}" alt="{$pagetitle | htmlent}"/>
        {else}
            <img class="mx-auto img-fluid" src="{$_modx->getPlaceholder('+conf_noimage')}" alt="{$pagetitle | htmlent}"/>
        {/if}
        <div class="card-body py-0">
            <h6 class="card-title mb-3">{$pagetitle | htmlent}</h6>
            <ul class="list-unstyled">
                {$_modx->runSnippet("msProductOptions", [
                    'onlyOptions' => $parent | resource : 'options',
                    'product' => $id,
                    'tpl' => '@FILE chunks/tpl_main_opt.tpl'
                ])}
                <!--
                <li class="fonts-size-14 mt-2"><span>Размер</span><span class="float-right">250x150x60</span>
                </li>
                <li class="fonts-size-14 mt-2"><span>Штук в м2</span><span class="float-right">24 штук</span>
                </li>
                <li class="fonts-size-14 mt-2"><span>Цвета</span><span
                            class="float-right"><ul class="list-inline mb-0 colours-wrapper">
                        <li class="list-inline-item m-0">
                            <label for="colour_Grey" style="background-color: #C7C7C7"
                                   class="btn-colour border-r50 p-2"> </label>
                            <input type="checkbox" name="colour" value="value_Grey" id="colour_Grey" class="invisible d-none">
                        </li>
                        <li class="list-inline-item m-0">
                            <label for="colour_Orang" style="background-color: #E97A5A"
                                   class="btn-colour border-r50 p-2"> </label>
                            <input type="checkbox" name="colour" value="value_Orang" id="colour_Orang"
                                   class="invisible  d-none">
                        </li>
                        <li class="list-inline-item m-0">
                            <label for="colour_Red" style="background-color: #B61320"
                                   class="btn-colour border-r50 p-2"> </label>
                            <input type="checkbox" name="colour" value="value_Red" id="colour_Red" class="invisible  d-none">
                        </li>
                    </ul></span></li>
                    -->
            </ul>
        </div>
        <div class="card-body pt-0">
            <div class="d-flex flex-column flex-lg-row align-items-center justify-content-between mt-4">
                <div class="font-weight-bold d-inline-flex flex-column mt-3 mt-md-auto ">
                    {if $old_price > 0}
                        <span
                                class="h4 text-gray"><del>
                                              {$old_price} &#8381;
                                            </del></span>
                    {/if}
                    {if $price > 0}
                        <span class="h3"> {$price} &#8381;</span>
                    {/if}
                </div>
                    <form action="#" method="post" class="ms2_form d-flex flex-column align-items-center">
                        <input type="hidden" name="id" value="{$id}">
                        <input type="hidden" name="count" value="1">
                        <input type="hidden" name="options" value="[]">
                        <button type="submit" name="ms2_action" value="cart/add" class="btn btn-outline-danger fonts-size-14 px-4">В корзину</button>
                        <a href="{$id | url}" class="btn btn-danger text-white fonts-size-14 mt-2">Просмотреть</a>
                    </form>
            </div>
        </div>
    </div>
</div>