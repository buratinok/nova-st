{var $resource_list = $_modx->runSnippet('!pdoResources', [
'parents' => '3',
'depth'=> '3',
'limit'=>'4',
'sortdir'=> 'ASC',
'return' => 'json'
])}

{var $all = $resource_list | fromJSON}
{foreach $all as $item}
    {$_modx->runSnippet('!msProducts', [
    'parents' => $item.id,
    'limit'=>'4',
    'sortby'=> 'RAND()',
    'tpl' => '@FILE chunks/tpl_product.tpl'
    ])}
{/foreach}