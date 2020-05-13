{set $optionscolors = $_modx->runSnippet("!msOptionsColor",[
"options" => "color",
'product' => $product.id,
'return' => 'data'
])}

{foreach $optionscolors as $key => $optionscolor}

    {foreach $optionscolor as $key => $optionsc}
        {set $modopt = $product.options}
        {if $optionsc.value == $modopt["color"]}
            <label style="position: relative;
                    display: inline-block;
                    width: 16px;
                    height: 16px;
                    background-color:#{$optionsc.color};
                    margin-bottom: 0;
                    border-radius: 50%;
                    box-shadow: inset 0 0 0 2px #fff, 0 0 0 1px #ced4da;
                    background-position: center;
                    background-size: cover;
                    cursor: pointer;"> </label>
        {/if}
    {/foreach}
{/foreach}