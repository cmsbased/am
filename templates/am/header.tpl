<!doctype html>
<html lang="en">

<head>
    <meta charset="{$charset}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    {include file="$template/includes/head.tpl"}
    {$headoutput}
</head>

<body class="primary-bg-color" data-phone-cc-input="{$phoneNumberInputStyle}">

    {$headeroutput}
    <header id="header" class="header">
        <div class="navbar navbar-light">
            <div class="container">
                <a class="mr-3 navbar-brand" href="{$WEB_ROOT}/index.php">
                    {if $assetLogoPath}
                        <img src="{$assetLogoPath}" alt="{$companyname}" class="logo-img">
                    {else}
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 433 102" fill="currentColor">
                            <path fill-rule="evenodd"
                                d="m431.787 39.128-.576 3.744h-19.44l.819-1.728c-.387-.912-.447-1.524-.71-1.836-.265-.312-.61-.468-1.765-.468h-29.664c-.912 0-1.548.156-1.908.468-.36.312-.612.924-.756 1.836l-.144 1.656c-.144.144-.072.732.216 1.044.288.312.864.492 1.728.54l39.528 1.512c8.256.288 11.688 4.488 10.296 12.6l-1.224 7.128c-.72 4.176-1.317 7.116-3.717 8.82-1.77 1.704-5.547 2.555-9.675 2.555H363.99c-5.019 0-7.68-1.055-9.711-3.167-1.752-2.112-1.929-5.232-1.476-9.36l.792-4.32h19.755l-.747 2.304c-.192.912-.144 1.524.144 1.836.603.312.888.468 1.8.468h31.393c.911 0 1.547-.156 1.907-.468.361-.312.612-.924.757-1.836l.216-1.512c.143-.624.083-1.512-.181-1.8-.264-.288-.852-.456-1.764-.504l-39.528-1.512c-7.917-.288-11.76-4.488-10.368-12.601l1.152-6.551c.72-4.128 2.112-7.056 4.176-8.784 2.064-1.728 5.16-2.592 9.288-2.592h49.968c8.112 0 12.267 4.176 10.224 12.528Zm-88.949 34.557c-2.615 2.21-6.49 3.314-11.624 3.314h-44.627c-5.134 0-8.818-1.344-11.05-4.034-2.232-2.688-2.891-6.627-1.979-11.813l6.165-34.552h20.105l-5.381 30.521c-.192 1.251-.084 2.128.324 2.633.409.506 2.129.758 2.487.758h27.958c1.249 0 2.15-.228 2.702-.684.553-.456.925-1.309 1.442-2.558l5.083-30.67h20.105l-6.419 35.988c-.912 5.189-2.676 8.888-5.291 11.097Zm-75.441 3.314h-64.714l8.984-50.399h20.104l-6.062 33.84h44.64l-2.952 16.559ZM202.971 51.8c-.816 4.08-2.364 7.44-4.644 9.36-1.857 2.64-5.82 3.24-10.62 3.24h-40.32l-1.557 12.599h-20.421l-4.099 24.572H.237l4.453-25h58.513l2.592-14.4H16.979l.144-.724c.192-.87.456-1.461.792-1.776.336-.314.936-.495 1.8-.544l36.576-1.737c4.272-.59 7.416-1.574 9.432-2.5 2.016-2.527 3.867-5.405 3.96-9.435l1.08-6.619c1.392-8.442-2.088-12.665-10.44-12.665H16.117c-.874 0-1.69.046-2.47.122L18.194.771h120.795L134.387 26.6h58.504c9.504 0 13.44 4.8 11.808 14.399L202.971 51.8Zm-80.726-25.629h-8.955l-34.533 2.162-1.847 15.1 22.943-1.498-3.6 20.236h-25.56l-2.592 14.4h56.898l2.551-14.4h-11.713l6.408-36Zm61.61 15.405c-.36-.384-1.068-.577-2.124-.577h-30.312l-1.584 9.361h30.456c1.056 0 2.499-.192 2.196-.576.408-.384.708-1.104.9-2.16l.72-3.888c.192-1.056.108-1.776-.252-2.16Zm-162.914-.141c.191-.911.455-1.523.792-1.836.947-.311.936-.468 1.8-.468h25.344c.911 0 1.523.169 1.836.506.527.336 1.127.936.18 1.8l-.288 1.153c-.241.864.155 1.83-.864 1.765-.337.313-.936.493-1.8.54l-36.504 2.084c-.516.821-1.014.521-1.497.121l.625-3.505h9.944l.432-2.16Z" />
                        </svg>
                    {/if}
                </a>
                <ul class="navbar-nav toolbar">
                    {if $loggedin}
                        <li class="ml-3 xl:ml-6 nav-item">
                            <a class="flex items-center p-2 -m-2 text-gray-400 rounded-full cursor-pointer group hover:text-gray-500 focus:outline-none"
                                data-toggle="popover" id="accountNotifications" data-placement="bottom">
                                <svg xmlns="http://www.w3.org/2000/svg"
                                    class="flex-shrink-0 w-5 h-5 text-gray-400 group-hover:text-gray-500" fill="none"
                                    viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
                                </svg>

                                {if count($clientAlerts) > 0}
                                    <span
                                        class="ml-0 text-sm font-bold text-gray-400 group-hover:text-gray-600">{count($clientAlerts)}</span>
                                {else}
                                    <span class="d-sm-none">0</span>
                                {/if}
                            </a>
                            <div id="accountNotificationsContent" class="w-hidden">
                                <ul class="client-alerts">
                                    {foreach $clientAlerts as $alert}
                                        <li>
                                            <a href="{$alert->getLink()}">
                                                <i
                                                    class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                                <div class="message">{$alert->getMessage()}</div>
                                            </a>
                                        </li>
                                    {foreachelse}
                                        <li class="none">
                                            {lang key='notificationsnone'}
                                        </li>
                                    {/foreach}
                                </ul>
                            </div>
                        </li>
                    {/if}
                    <li class="ml-3 xl:ml-6 nav-item">
                        {$link_back="systpl=`$template`&amp;"}
                        <a href="{$currentpagelinkback|replace:$link_back:''}systpl=twenty-one-plus-dark"
                            class="flex items-center p-2 -m-2 text-gray-400 rounded-full group hover:text-gray-500 focus:outline-none">
                            <svg xmlns="http://www.w3.org/2000/svg"
                                class="flex-shrink-0 w-5 h-5 text-gray-400 group-hover:text-gray-500" fill="none"
                                viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M20.354 15.354A9 9 0 018.646 3.646 9.003 9.003 0 0012 21a9.003 9.003 0 008.354-5.646z" />
                            </svg>
                        </a>
                    </li>
                    <li class="ml-3 mr-3 xl:ml-6 nav-item">
                        <a class="flex items-center p-2 -m-2 text-gray-400 rounded-full group hover:text-gray-500 focus:outline-none"
                            href="{$WEB_ROOT}/cart.php?a=view">
                            <svg class="flex-shrink-0 w-5 h-5 text-gray-400 group-hover:text-gray-500"
                                x-description="Heroicon name: outline/shopping-bag" xmlns="http://www.w3.org/2000/svg"
                                fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M16 11V7a4 4 0 00-8 0v4M5 9h14l1 12H4L5 9z"></path>
                            </svg>
                            <span
                                class="ml-0.5 text-sm font-bold text-gray-400 group-hover:text-gray-600">{$cartitemcount}</span>
                            <span class="sr-only">{lang key="carttitle"}</span>
                        </a>
                    </li>
                    {if $loggedin}
                        {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar rightDrop=true}
                    {/if}
                    <li class="ml-3 xl:ml-6 nav-item d-xl-none">
                        <button
                            class="flex items-center p-2 -m-2 text-gray-400 rounded-full group hover:text-gray-500 focus:outline-none"
                            type="button" data-toggle="collapse" data-target="#mainNavbar">
                            <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5 text-gray-500" fill="none"
                                viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M4 6h16M4 12h16m-7 6h7" />
                            </svg>
                        </button>
                    </li>
                </ul>
            </div>
        </div>
        <div class="navbar navbar-expand-xl main-navbar-wrapper">
            <div class="container">
                <div class="collapse navbar-collapse" id="mainNavbar">
                    <form method="post" action="{routePath('knowledgebase-search')}" class="d-xl-none">
                        <div class="mb-2 input-group search w-100">
                            <div class="input-group-prepend">
                                <button class="btn btn-default" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                            <input class="form-control prepended-form-control" type="text" name="search"
                                placeholder="{lang key="searchOurKnowledgebase"}...">
                        </div>
                    </form>
                    <ul id="nav" class="mr-auto navbar-nav">
                        {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}
                    </ul>
                    <div class="inline-flex ml-auto">
                        {if $loggedin}
                            <a href="{$WEB_ROOT}/submitticket.php"
                                class="px-4 py-2 text-xs font-bold tracking-wider text-white no-underline uppercase border border-transparent rounded-sm dark:text-white active:shadow-none hover:text-white bg-primary-600 hover:bg-primary-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary-500 focus:bg-primary-300 active:bg-primary-300 active:focus:bg-primary-300">
                                {$LANG.navopenticket}
                            </a>
                        {else}
                            {if $condlinks.allowClientRegistration == "on"}
                                <a href="{$WEB_ROOT}/register.php"
                                    class="px-4 py-2 text-xs font-bold tracking-wider text-black text-gray-700 no-underline uppercase bg-transparent border border-gray-400 rounded-sm dark:text-white active:shadow-none dark:border-gray-700 hover:text-gray-400">{$LANG.register}</a>
                            {/if}
                            <a href="{$WEB_ROOT}/login.php"
                                class="px-4 py-2 ml-2 text-xs font-bold tracking-wider text-white no-underline uppercase border border-transparent rounded-sm dark:text-white active:shadow-none hover:text-white bg-primary-600 hover:bg-primary-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary-500 focus:bg-primary-300 active:bg-primary-300 active:focus:bg-primary-300">{$LANG.login}</a>

                        {/if}
                    </div>
                </div>
            </div>
        </div>
    </header>

    {include file="$template/includes/network-issues-notifications.tpl"}

    <nav class="master-breadcrumb" aria-label="breadcrumb">
        <div class="container">
            {include file="$template/includes/breadcrumb.tpl"}
        </div>
    </nav>

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