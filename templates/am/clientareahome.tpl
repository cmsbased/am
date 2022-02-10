{include file="$template/includes/flashmessage.tpl"}

<div>
    <dl class="grid grid-cols-1 gap-5 mb-10 overflow-hidden md:grid-cols-4">
        <div
            class="relative p-5 text-black transition duration-300 ease-in-out bg-white rounded-tl-xl rounded-br-xl hover:bg-primary-600">
            <a href="clientarea.php?action=services"
                class="text-black no-underline focus:outline-none hover:text-white">
                <span class="absolute inset-0" aria-hidden="true"></span>
                <dd class="flex items-center justify-between pb-0 mb-0 md:block lg:flex">
                    <div class="text-xs">
                        <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" fill="none" viewBox="0 0 24 24"
                            stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M5 12h14M5 12a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v4a2 2 0 01-2 2M5 12a2 2 0 00-2 2v4a2 2 0 002 2h14a2 2 0 002-2v-4a2 2 0 00-2-2m-2-4h.01M17 16h.01" />
                        </svg>
                    </div>
                </dd>
                <div class="flex justify-center font-normal content-center text-[96px]">
                    <div class="-mt-7">{$clientsstats.productsnumactive}</div>
                </div>
                <dt class="text-lg font-normal tracking-widest text-center uppercase">
                    {lang key='navservices'}
                </dt>
            </a>
        </div>
        {if $clientsstats.numdomains || $registerdomainenabled || $transferdomainenabled}

            <div
                class="relative p-5 text-black transition duration-300 ease-in-out bg-white rounded-tl-xl rounded-br-xl hover:bg-primary-600">
                <a href="clientarea.php?action=domains" class="text-black no-underline focus:outline-none hover:text-white">
                    <span class="absolute inset-0" aria-hidden="true"></span>
                    <dd class="flex items-center justify-between pb-0 mb-0 md:block lg:flex">
                        <div class="text-xs">
                            <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M21 12a9 9 0 01-9 9m9-9a9 9 0 00-9-9m9 9H3m9 9a9 9 0 01-9-9m9 9c1.657 0 3-4.03 3-9s-1.343-9-3-9m0 18c-1.657 0-3-4.03-3-9s1.343-9 3-9m-9 9a9 9 0 019-9" />
                            </svg>
                        </div>
                    </dd>
                    <div class="flex justify-center font-normal content-center text-[96px]">
                        <div class="-mt-7"> {$clientsstats.numactivedomains}</div>
                    </div>
                    <dt class="text-lg font-normal tracking-widest text-center uppercase">
                        {lang key='navdomains'}
                    </dt>
                </a>
            </div>
        {elseif $condlinks.affiliates && $clientsstats.isAffiliate}

            <div
                class="relative p-5 text-black transition duration-300 ease-in-out bg-white rounded-tl-xl rounded-br-xl hover:bg-primary-600">
                <a href="affiliates.php" class="text-black no-underline focus:outline-none hover:text-white">
                    <span class="absolute inset-0" aria-hidden="true"></span>
                    <dd class="flex items-center justify-between pb-0 mb-0 md:block lg:flex">
                        <div class="text-xs">
                            <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                            </svg>
                        </div>
                    </dd>
                    <div class="flex justify-center font-normal content-center text-[96px]">
                        <div class="-mt-7">{$clientsstats.numaffiliatesignups}</div>
                    </div>
                    <dt class="text-lg font-normal tracking-widest text-center uppercase">
                        {lang key='affiliatessignups'}
                    </dt>
                </a>
            </div>

        {else}

            <div
                class="relative p-5 text-black transition duration-300 ease-in-out bg-white rounded-tl-xl rounded-br-xl hover:bg-primary-600">
                <a href="clientarea.php?action=quotes" class="text-black no-underline focus:outline-none hover:text-white">
                    <span class="absolute inset-0" aria-hidden="true"></span>
                    <dd class="flex items-center justify-between pb-0 mb-0 md:block lg:flex">
                        <div class="text-xs">
                            <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M3 7v10a2 2 0 002 2h14a2 2 0 002-2V9a2 2 0 00-2-2h-6l-2-2H5a2 2 0 00-2 2z" />
                            </svg>
                        </div>
                    </dd>
                    <div class="flex justify-center font-normal content-center text-[96px]">
                        <div class="-mt-7">{$clientsstats.numquotes}</div>
                    </div>
                    <dt class="text-lg font-normal tracking-widest text-center uppercase">
                        {lang key='quotes'}
                    </dt>
                </a>
            </div>
        {/if}

        <div
            class="relative p-5 text-black transition duration-300 ease-in-out bg-white rounded-tl-xl rounded-br-xl hover:bg-primary-600">
            <a href="supporttickets.php" class="text-black no-underline focus:outline-none hover:text-white">
                <span class="absolute inset-0" aria-hidden="true"></span>
                <dd class="flex items-center justify-between pb-0 mb-0 md:block lg:flex">
                    <div class="text-xs">
                        <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" fill="none" viewBox="0 0 24 24"
                            stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M18.364 5.636l-3.536 3.536m0 5.656l3.536 3.536M9.172 9.172L5.636 5.636m3.536 9.192l-3.536 3.536M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-5 0a4 4 0 11-8 0 4 4 0 018 0z" />
                        </svg>
                    </div>
                </dd>
                <div class="flex justify-center font-normal content-center text-[96px]">
                    <div class="-mt-7">{$clientsstats.numactivetickets}</div>
                </div>
                <dt class="text-lg font-normal tracking-widest text-center uppercase">
                    {lang key='navtickets'}
                </dt>
            </a>
        </div>

        <div
            class="relative p-5 text-black transition duration-300 ease-in-out bg-white rounded-tl-xl rounded-br-xl hover:bg-primary-600">
            <a href="clientarea.php?action=invoices"
                class="text-black no-underline focus:outline-none hover:text-white">
                <span class="absolute inset-0" aria-hidden="true"></span>
                <dd class="flex items-center justify-between pb-0 mb-0 md:block lg:flex">
                    <div class="text-xs">
                        <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" fill="none" viewBox="0 0 24 24"
                            stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M17 9V7a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2m2 4h10a2 2 0 002-2v-6a2 2 0 00-2-2H9a2 2 0 00-2 2v6a2 2 0 002 2zm7-5a2 2 0 11-4 0 2 2 0 014 0z" />
                        </svg>
                    </div>
                </dd>
                <div class="flex justify-center font-normal content-center text-[96px]">
                    <div class="-mt-7">{$clientsstats.numunpaidinvoices}</div>
                </div>
                <dt class="text-lg font-normal tracking-widest text-center uppercase">
                    {lang key='navinvoices'}
                </dt>
            </a>
        </div>
    </dl>
</div>



{foreach $addons_html as $addon_html}
    <div>
        {$addon_html}
    </div>
{/foreach}



<div class="grid grid-cols-1 gap-8 mb-10 xl:grid-cols-2 2xl:grid-cols-3">
    <div class="relative col-span-2 px-10 py-5 bg-white shadow-xl rounded-tl-xl rounded-br-xl">
        <h4 class="text-base font-bold tracking-widest uppercase nav-billing">{$LANG.navbilling}</h4>
        <div class="grid grid-cols-1 gap-20 xl:grid-cols-2">
            <div class="flex items-center justify-between mt-5 md:block lg:flex">
                <div class="inline-flex space-x-2 text-sm truncate group">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M17 9V7a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2m2 4h10a2 2 0 002-2v-6a2 2 0 00-2-2H9a2 2 0 00-2 2v6a2 2 0 002 2zm7-5a2 2 0 11-4 0 2 2 0 014 0z" />
                    </svg>
                    <span class="mx-3">{$LANG.statsdueinvoicesbalance}</span>
                </div>
                <div><a href="clientarea.php?action=invoices">{$clientsstats.dueinvoicesbalance}</a></div>
            </div>
            <div class="flex items-center justify-between mt-5 md:block lg:flex">
                <div class="inline-flex space-x-2 text-sm truncate group">
                    <svg xmlns="http://www.w3.org/2000/svg" class="flex-shrink-0 w-5 h-5" fill="none"
                        viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4" />
                    </svg>
                    <span class="mx-3">{$LANG.statscreditbalance}</span>
                </div>
                <a href="clientarea.php?action=addfunds">{$clientsstats.creditbalance}</a>
            </div>
        </div>
    </div>

    <div class="relative px-10 py-5 bg-white shadow-lg rounded-tl-xl rounded-br-xl">
        <h4 class="text-base font-bold tracking-widest uppercase account-info">{$LANG.accountinfo}</h4>
        <div class="py-5">
            {$clientsdetails.firstname} {$clientsdetails.lastname}<br />
            {$clientsdetails.email}
        </div>
        <div>
            <a class="btn btn-block btn-primary" href="clientarea.php?action=details"
                title="{$LANG.editaccountdetails}">Update</a>
        </div>
    </div>
</div>

<div class="client-home-cards">
    <div class="grid grid-cols-1 gap-8 xl:grid-cols-2 2xl:grid-cols-3">
        {function name=outputHomePanels}
            <div menuItemName="{$item->getName()}"
                class="{if $item->getName() == "Affiliate Program"}panel-affilaite{elseif $item->getName() == "Register a New Domain"}panel-new-domain{elseif $item->getName() == "Recent Support Tickets"}panel-support-tickets{elseif $item->getName() == "Active Products/Services"}panel-products 2xl:col-span-2{/if} card"
                {if $item->getAttribute('id')} id="{$item->getAttribute('id')}" {/if}>
                <div class="card-header">
                    <h3 class="m-0 card-title">
                        {if $item->getExtra('btn-link') && $item->getExtra('btn-text')}
                            <div class="float-right">
                                <a href="{$item->getExtra('btn-link')}"
                                    class="pb-0.5 pr-0 btn btn-link btn-xs text-primary-600">
                                    {$item->getExtra('btn-text')}
                                </a>
                            </div>
                        {/if}
                        {$item->getLabel()}
                        {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
                    </h3>
                </div>
                {if $item->hasBodyHtml()}
                    <div class="card-body">
                        {$item->getBodyHtml()}
                    </div>
                {/if}
                {if $item->hasChildren()}
                    <div
                        class="list-group{if $item->getChildrenAttribute('class')} {$item->getChildrenAttribute('class')}{/if}">
                        {foreach $item->getChildren() as $childItem}
                            {if $childItem->getUri()}
                                <a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}"
                                    class="list-group-item list-group-item-action{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"
                                    {if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"
                                        {/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}" {/if}
                                        id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()|replace:"background-color":"--use-status-color"}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </a>
                                {else}
                                    <div menuItemName="{$childItem->getName()}"
                                        class="list-group-item list-group-item-action{if $childItem->getClass()} {$childItem->getClass()}{/if}"
                                        id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </div>
                                {/if}
                            {/foreach}
                        </div>
                    {/if}
                    {if $item->hasFooterHtml()}
                        <div class="card-footer">
                            {$item->getFooterHtml()}
                        </div>
                    {/if}
                </div>
            {/function}
            {foreach $panels as $item}
                {outputHomePanels}
            {/foreach}
        </div>
    </div>