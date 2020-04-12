<base href="{$_modx->config.site_url}">
<meta charset="{$_modx->config.modx_charset}" />

{if $_modx->resource.seodescription}
    <meta name="description" content="{$_modx->resource.seodescription}">
{/if}
{if $_modx->resource.seokeywords}
    <meta name="keywords" content="{$_modx->resource.seokeywords}">
{/if}

<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
{if $_modx->resource.searchable}
    <meta name="robots" content="index,follow">
{else}
    <meta name="robots" content="noindex,nofollow">
{/if}
<title>
    {$_modx->resource.seotitle?: $_modx->resource.pagetitle}
</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Source+Sans+Pro&display=swap" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/1.6.12/css/lightgallery.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/1.6.12/css/lg-transitions.min.css">
<link rel="stylesheet" href="assets/templates/nova-st/css/bootstrap.css">
<link rel="stylesheet" href="assets/templates/nova-st/css/style.css">