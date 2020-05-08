<form class="section-cart__form ms2_form" id="msOrder" method="post">
    <h4 class="text-left">Оформление заказа</h4>
    <div class="form-row justify-content-between pt-5">
        {foreach ['email','receiver','phone'] as $field}
            <div class="form-group position-relative  col-12 col-md-4 px-md-3">
                <label for="{$field}" class="h5 left-text pb-3">
                    {('ms2_frontend_' ~ $field) | lexicon} <span class="required-star">*</span>
                </label>
                <i class="icon {$field}-icon position-absolute"></i>
                <input type="text" class="form-control {($field in list $errors) ? ' error' : ''}" id="{$field}"
                       name="{$field}"
                       placeholder="{('ms2_frontend_' ~ $field) | lexicon}" value="{$form[$field]}">
            </div>
        {/foreach}
    </div>
    <div class="form-row pt-3 pt-md-5" id="deliveries">

        <fieldset class="form-group">
            <legend class="h5 text-left pt-0 pb-3">{'ms2_frontend_deliveries' | lexicon}:</legend>
            <div class="row">
                <div class="col-sm-10 d-flex flex-column flex-md-row">
                    {foreach $deliveries as $delivery index=$index}
                        {var $checked = !$order.delivery && $index == 0 || $delivery.id == $order.delivery}
                        <label class="delivery col-auto mt-3 mt-md-auto pr-md-5 input-parent">
                            <input type="radio" name="delivery" id="delivery_{$delivery.id}"
                                   value="{$delivery.id}" data-payments="{$delivery.payments | json_encode}"
                                    {$checked ? 'checked' : ''}>
                            {if $delivery.name?}
                                <label for="delivery_{$delivery.id}">
                                    {$delivery.name}
                                </label>
                            {/if}
                        </label>
                    {/foreach}
                </div>
            </div>
        </fieldset>

        {foreach ['index','region','city'] as $field}
            <div class="form-group col-12 col-md-4">
                <label for="{$field}" class="h5 text-left">{('ms2_frontend_' ~ $field) | lexicon}</label>
                <input type="text" class="form-control {($field in list $errors) ? ' error' : ''}" id="{$field}"
                       name="{$field}"
                       placeholder="{('ms2_frontend_' ~ $field) | lexicon}" value="{$form[$field]}">
            </div>
        {/foreach}
    </div>
    <div class="form-row pt-3 pt-md-5" id="payments">
        <fieldset class="form-group justify-content-md-between col-auto">
            <legend class="h5 text-left pt-0">{'ms2_frontend_payments' | lexicon}:</legend>
            <div class="row">
                <div class="col d-flex flex-row">
                    {foreach $payments as $payment index=$index}

                        {var $checked = !$order.payment && $index == 0 || $payment.id == $order.payment}
                        <label class="col-auto payment input-parent">
                            <input type="radio" name="payment" id="payment_{$payment.id}"
                                   value="{$payment.id}"
                                    {$checked ? 'checked' : ''}>
                            {if $payment.name?}
                                <label for="payment_{$payment.id}">
                                    {$payment.name}
                                </label>
                            {/if}
                        </label>
                    {/foreach}
                </div>
            </div>
        </fieldset>
    </div>
    <hr>
    <div class="media flex-column flex-md-row justify-content-around py-5">
        <img src="assets/templates/nova-st/img/weights.png"
             class="mb-3 mb-md-auto mx-auto img-fluid d-block"/>
        <div class="media-body col-12 col-md-6 bg-secondary p-5">
            <h5 class="mt-3">Вес: <span class="float-right">
                        {$total | var_dump}
                        <span class="ms2_total_weight">{$total.weight ?  : $order.weight}</span>
                        {'ms2_frontend_weight_unit' | lexicon}
                    </span>
            </h5>
            <hr>
            <h4 class="mt-3">Всего: <span class="float-right"><span id="ms2_order_cost">{$order.cost ?: 0}</span>
                        {'ms2_frontend_currency' | lexicon}
                    </span></span></h4>
        </div>
    </div>
    <button type="submit" name="ms2_action" value="order/submit"
            class="btn btn-outline-danger px-5 float-right ms2_link"> {'ms2_frontend_order_submit' | lexicon}
    </button>
</form>

