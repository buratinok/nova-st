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
                            type="radio"
                            name='options[{$name}]'
                           {$index !=6 ? '' : "checked"}
                            value="{$values}"
                            id="colour_{$optionsc["name"]}"
                            class="inut-invisible">
                    <label
                            for="colour_{$optionsc["name"]}"
                            style="background-color: #{$optionsc['color']}"
                            class="btn-colour border-r50 p-2 ml-2  {$index !=6 ? '' : "active"}"> </label>
				{/if}
            {/foreach}
        {/foreach}
    {/foreach}
</li>






