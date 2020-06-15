{set $optionscolors = $_modx->runSnippet("!msOptionsColor",["options" => "color",
                                                            'tpl' => "@FILE chunks/tpl_colors.tpl",
                                                            'toPlaceholder' => 'result',
                                                            'return' => 'data'
                                                            ])}
<li class="list-inline-item m-0 msoptionsprice-{$id}">
    {foreach $options as $name => $values}

	    {foreach $optionscolors as $optionscolor}

		    {foreach $optionscolor as $optionsc index=$index}

			    {if $optionsc['value'] == $values}
			     <input
                            type="hidden"
                            name='input_color[{$name}]'
                            value="{$optionsc["name"]}"
                            class="inut-invisible input_color"
                            >

				    <input
                            type="radio"
                            name='options[{$name}]'
                           {$optionsc["name"] != 'grey' ? '' : "checked"}
                            value="{$values}"
                            id="colour_{$optionsc["name"]}"
                            class="inut-invisible"
                            >
                            {set $all = 'all'}
                    <label
                            for="colour_{$optionsc["name"]}"
                            {if $optionsc["name"] != $all}
                            style="background: #{$optionsc['color']}"
                            {else}
                            style="background: radial-gradient(circle, rgba(255,4,0,1) 0%, rgba(254,255,0,1) 14%, rgba(0,255,37,1) 28%, rgba(70,86,252,1) 49%, rgba(222,70,252,1) 67%, rgba(252,219,70,1) 93%);"
                            {/if}
                            class="btn-colour border-r50 p-2 ml-2 {$optionsc['name']}  {$optionsc["name"] != 'grey' ? '' : "active"}"
                            data-original-color="{$values}"
                            data-toggle="tooltip" 
                            data-placement="top" 
                            title="{$values} - {$price}р."
                            data-title-url="?color={$optionsc['name']}"
                            > </label>
				{/if}
            {/foreach}
        {/foreach}
    {/foreach}
</li>






