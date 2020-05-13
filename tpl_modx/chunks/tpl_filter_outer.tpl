
    <div class="col align-self-start ml-md-3 mb-3" id="mse2_{$table}{$delimeter}{$filter}">
        <h6 class="text-md-left fonts-size-14 ml-2">{$_modx->lexicon('mse2_filter_'~$table~'_'~$filter)}</h6>
        <fieldset id="mse2_{$table}{$delimeter}{$filter}">
            <select name="{$filter_key}" id="mse2_{$table}{$delimeter}{$filter}_{$idx}" class="form-control">
                <option value="" selected>
                    Не выбран
                </option>
                {$rows}
            </select>
        </fieldset>
    </div>