

{foreach $options as $name => $values}
    <li class="fonts-size-18 mt-2"><span>{('ms2_product_' ~ $name) | lexicon}: </span><span
                class="float-right font-weight-bold fonts-size-20">
            {foreach $values as $value}
                {$value}
            {/foreach}
        </span>
    </li>

{/foreach}