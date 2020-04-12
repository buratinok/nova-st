
    <div class="col" id="mse2_{$table}{$delimeter}{$filter}">
        <h6 class="text-center text-md-left">{$_modx->lexicon('mse2_filter_'~$table~'_'~$filter)}</h6>
        <fieldset id="mse2_{$table}{$delimeter}{$filter}">
            <select name="{$filter_key}" id="mse2_{$table}{$delimeter}{$filter}_{$idx}" class="form-control">
                <option value="" selected>
                    Не выбран
                </option>
                {$rows}
            </select>
        </fieldset>
    </div>