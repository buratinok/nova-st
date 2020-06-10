



{set $rows = json_decode($_pls["tv.answer_questions"])}

<div class="col-lg-6">
    <div class="accordion mt-5" id="accordionExample">

        {if $rows}
        {foreach $rows as $key => $row}
        <div class="card mt-2 border-r0 py-1">
            <div class="card-header border-0 bg-white position-relative px-1 px-md-4" id="heading{$row.id}">
        
                <button class="btn btn-link btn-accordion text-dark text-decoration-none  px-2" data-js="false" type="button"
                        data-toggle="collapse"
                        data-target="#collapse{$row.id}"
                        aria-expanded="false"
                        aria-controls="collapse{$row.id}">
                    <i class="arrow-bottom d-none d-md-inline-block"></i>
                    {$row.questions}
                </button>
            </div>
        
            <div id="collapse{$row.id}" class="collapse" aria-labelledby="heading{$row.id}" data-parent="#accordionExample">
                <div class="card-body">
                    {$row.answer}
                </div>
            </div>
        </div>
        {/foreach}
        {/if}
        
    </div>
</div>
<div class="col-lg-6 p-5 d-flex justify-content-center">
    <img class="img-fluid" src="{$_pls['tv.imgcompany']}"  title="img company" alt="img company">
</div>
