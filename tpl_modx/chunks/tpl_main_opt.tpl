{foreach $options as $option}
    <li class="fonts-size-18 mt-2"><span>{$option.caption}:</span><span
                class="float-right font-weight-bold fonts-size-14">
                {if $option.value is array}
                    {$option.value | join : ", "}
                    {if $option.measure_unit}
                        {$option.measure_unit}
                    {/if}
                {else}
                    {$option.value}
                    {if $option.measure_unit}
                        {$option.measure_unit}
                    {/if}
                {/if}

            </span>
    </li>
{/foreach}