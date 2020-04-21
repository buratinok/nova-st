{set $rows = json_decode($_modx->resource.delivery)}
{if $rows}
    <div class="row">
        {foreach $rows as $key => $row}
            <div class="col-md-{$row.size}">
                <div class="d-flex">
                    <i class="{$row.icon} mr-2"></i>
                    <p class="mb-3 ">{$row.description}</p>
                </div>
            </div>
        {/foreach}
    </div>
{/if}
