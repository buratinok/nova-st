
    <li class="fonts-size-14 mt-2"><span>{$options.quantity.caption}</span><span
                class="float-right font-weight-bold fonts-size-14">
                {if $options.quantity.value is array}
                    {$options.quantity.value | join : ", "}
                    {if $options.quantity.measure_unit}
                        {$options.quantity.measure_unit}
                    {/if}
                {else}
                    {$options.quantity.value}
                    {if $options.quantity.measure_unit}
                        {$options.quantity.measure_unit}
                    {/if}
                {/if}

            </span>
    </li>