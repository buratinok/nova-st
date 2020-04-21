{set $rows = json_decode($_modx->resource.ourquality)}
{if $rows}
    <div class="row">
        {foreach $rows as $key => $row}
            <div class="col-12 col-md-6 pt-2 pt-md-4">
                <h4 class="mb-0">{$row.title}</h4>
                <i class="{$row.icon} mr-2"></i>
                <p>{$row.description}</p>
            </div>
        {/foreach}
    </div>
{/if}
