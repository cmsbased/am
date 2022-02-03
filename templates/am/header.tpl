<!doctype html>
<html lang="en">

<head>
    <meta charset="{$charset}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    {include file="$template/includes/head.tpl"}
    <script src='{$WEB_ROOT}/templates/{$template}/assets/js/frontend.min.js'></script>
    <script src='{$WEB_ROOT}/templates/{$template}/assets/js/integration.js'></script>
    <link href="{$WEB_ROOT}/templates/{$template}/css/integration.css" rel="stylesheet">
    {$headoutput}
</head>

<body class="primary-bg-color" data-phone-cc-input="{$phoneNumberInputStyle}">

    {$headeroutput}

    {include file="$template/includes/fixed-header.tpl"}


    {include file="$template/includes/network-issues-notifications.tpl"}

    {if $templatefile != 'login'}
        <nav class="master-breadcrumb" aria-label="breadcrumb">
            <div class="container">
                {include file="$template/includes/breadcrumb.tpl"}
            </div>
        </nav>
    {/if}

    {include file="$template/includes/validateuser.tpl"}
    {include file="$template/includes/verifyemail.tpl"}

    {if $templatefile == 'homepage'}
        {if $registerdomainenabled || $transferdomainenabled}
            {include file="$template/includes/domain-search.tpl"}
        {/if}
    {/if}

    <section id="main-body">
        <div class="{if !$skipMainBodyContainer}container{/if}">
            <div class="row">
                {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
                    <div class="col-lg-4 col-xl-3">
                        <div class="sidebar">
                            {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                        </div>
                        {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                            <div class="d-none d-lg-block sidebar">
                                {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                            </div>
                        {/if}
                    </div>
                {/if}
                <div
class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-lg-8 col-xl-9{else}col-12{/if} primary-content">