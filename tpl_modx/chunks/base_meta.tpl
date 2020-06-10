<base href="{$_modx->config.site_url}">
<meta charset="{$_modx->config.modx_charset}" />

{if $_modx->resource.description}
    <meta name="description" content="{$_modx->resource.description}">
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

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" rel="stylesheet">

<link rel="stylesheet" href="assets/templates/nova-st/css/swiper.min.css">
<link rel="stylesheet" href="assets/templates/nova-st/css/lightgallery.min.css">
<link rel="stylesheet" href="assets/templates/nova-st/css/lg-transitions.min.css">
 <link href="https://cdn.jsdelivr.net/npm/suggestions-jquery@20.3.0/dist/css/suggestions.min.css" rel="stylesheet" />

<link rel="stylesheet" href="assets/templates/nova-st/css/bootstrap.css">

<link rel="stylesheet" href="assets/templates/nova-st/css/style.css">
<!--[if IE]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->