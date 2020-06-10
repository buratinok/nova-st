{set $optionscolors = $_modx->runSnippet("!msOptionsColor",[
"options" => "color",
'product' => $product.id,
'return' => 'data'
])}

{foreach $optionscolors as $key => $optionscolor index=$index}

    {foreach $optionscolor as $key => $optionsc}
  
        {set $modopt = $product.options}
        {if $optionsc.value == $modopt["color"]}
        {set $all = "all"}
            <label style="position: relative;
                    display: inline-block;
                    width: 16px;
                    height: 16px;
                    {if $optionsc.name != $all}
                    background-color:#{$optionsc.color};
                            {else}
                            background: radial-gradient(circle, rgba(255,4,0,1) 0%, rgba(254,255,0,1) 14%, rgba(0,255,37,1) 28%, rgba(70,86,252,1) 49%, rgba(222,70,252,1) 67%, rgba(252,219,70,1) 93%);
                            {/if}
                    margin-bottom: 0;
                    border-radius: 50%;
                    box-shadow: inset 0 0 0 2px #fff, 0 0 0 1px #ced4da;
                    background-position: center;
                    background-size: cover;
                    cursor: pointer;"> </label>
        {/if}
    {/foreach}
{/foreach}