{set $optionscolors = $_modx->runSnippet("!msOptionsColor",["options" => "color",
                                                            'tpl' => "@FILE chunks/tpl_colors.tpl",
                                                            'toPlaceholder' => 'result',
                                                            'return' => 'data'
                                                            ])}
<li class="list-inline-item m-0 ">
    {foreach $options as $name => $value}
	    {foreach $optionscolors as $optionscolor}
		    {foreach $optionscolor as $optionsc index=$index}
			    {if $optionsc['value'] == $value}
			        <label
                            for="colour_{$optionsc["name"]}"
                            style="background-color: #{$optionsc['color']}"
                            class="btn-colour border-r50 p-2 ml-2  {$index!=6 ? '' : "active"}"> </label>
				    <input
                            type="radio"
                            name='options[option]'
                            value='{ "price":"{$price}","color":"{$optionsc['name']}","background-color":"#{$optionsc['color']}" }'
                            id="colour_{$optionsc["name"]}"
                           
                            class="inut-invisible">
				{/if}
            {/foreach}
        {/foreach}
    {/foreach}
</li>








