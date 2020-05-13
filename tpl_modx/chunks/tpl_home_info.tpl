{set $rows = json_decode($_modx->resource.info_home)}
{if $rows}
    <div class="row row-cols-2">
        {foreach $rows as $key => $row}
        <div class="col mt-4">
            <div class="media flex-column flex-md-row align-items-md-start">
                <i class="{$row.icon}"></i>
                <div class="media-body ml-2">
                    {$row.description}
                </div>
            </div>
        </div>
        {/foreach}
    </div>
{/if}
