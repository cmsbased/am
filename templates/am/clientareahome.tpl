{include file="$template/includes/flashmessage.tpl"}

<div>
    <dl class="grid grid-cols-1 gap-5 mb-10 overflow-hidden md:grid-cols-4">
        <div
            class="relative p-5 text-black transition duration-300 ease-in-out bg-white rounded-tl-xl rounded-br-xl hover:bg-primary-600">
            <a href="{$WEB_ROOT}/clientarea.php?action=services"
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
                <a href="{$WEB_ROOT}/clientarea.php?action=domains"
                    class="text-black no-underline focus:outline-none hover:text-white">
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
                <a href="{$WEB_ROOT}/affiliates.php" class="text-black no-underline focus:outline-none hover:text-white">
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
                <a href="{$WEB_ROOT}/clientarea.php?action=quotes"
                    class="text-black no-underline focus:outline-none hover:text-white">
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
            <a href="{$WEB_ROOT}/supporttickets.php"
                class="text-black no-underline focus:outline-none hover:text-white">
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
            <a href="{$WEB_ROOT}/clientarea.php?action=invoices"
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
    <div class="relative col-span-2 px-10 py-5 bg-white shadow-lg rounded-tl-xl rounded-br-xl">
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

<div class="grid grid-cols-1 gap-8 mb-10 xl:grid-cols-2 2xl:grid-cols-3">
    <div class="relative col-span-3 px-10 py-5 bg-white shadow-xl rounded-tl-xl rounded-br-xl">
        <h3 class="page-header-2"><span aria-hidden="true" class="icon icon-drawer"></span> <span
                class="text-lg header-text">{$clientsstats.numdueinvoices} {$LANG.invoicesdue}</span></h3>
        <form method="post" action="{$WEB_ROOT}/clientarea.php?action=masspay">
            <table class="min-w-full divide-y divide-gray-100 dark:divide-gray-900" id="myInvoices">
                <thead class="bg-transparent dark:bg-black">
                    <tr>
                        <th></th>
                        <th
                            class="hidden px-6 py-3 text-xs font-medium tracking-wider text-left text-gray-500 uppercase lg:table-cell">
                            {$LANG.invoicesdatecreated}
                        </th>
                        <th
                            class="hidden px-6 py-3 text-xs font-medium tracking-wider text-left text-gray-500 uppercase lg:table-cell">
                            {$LANG.invoicesdatedue}
                        </th>
                        <th
                            class="hidden px-6 py-3 text-xs font-medium tracking-wider text-left text-gray-500 uppercase sm:table-cell">
                            {$LANG.invoicesstatus}
                        </th>
                        <th
                            class="hidden px-6 py-3 text-xs font-medium tracking-wider text-left text-right text-gray-500 uppercase lg:table-cell">
                            {$LANG.invoicestotal}
                        </th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-100 dark:divide-gray-900 dark:bg-transparent">
                    {foreach from=$invoices item=invoice}
                        <tr>
                            <td class="px-6 py-4 whitespace-nowrap">
                                <div class="flex items-center">
                                    {if $masspay = true}
                                        <input type="checkbox" name="invoiceids[]" value="{$invoice.id}"
                                            class="mt-0 mr-2 border invids input" />
                                    {/if}
                                    <a href="{$WEB_ROOT}/viewinvoice.php?id={$invoice.id}"
                                        class="item-title">{$LANG.invoicestitle}{$invoice.invoicenum}</a>
                                </div>
                                <ul class="lg:hidden">
                                    <li class="sm:hidden">
                                        <span
                                            class="pl-0 label label-{$invoice.rawstatus} label-danger">{$invoice.statustext}</span>
                                    </li>
                                    <li>{$LANG.invoicestotal}: {$invoice.total}</li>
                                    <li>{$LANG.invoicesdatecreated}: {$invoice.datecreated}</li>
                                    <li>{$LANG.invoicesdatedue}: {$invoice.datedue}</li>
                                </ul>
                            </td>
                            <td class="hidden px-6 py-4 whitespace-nowrap lg:table-cell">{$invoice.datecreated}</td>
                            <td class="hidden px-6 py-4 whitespace-nowrap lg:table-cell">{$invoice.datedue}</td>
                            <td class="hidden px-6 py-4 whitespace-nowrap sm:table-cell">
                                <span class="label label-{$invoice.rawstatus} label-danger">{$invoice.statustext}</span>
                            </td>
                            <td class="hidden px-6 py-4 text-right whitespace-nowrap lg:table-cell">{$invoice.total}</td>
                        </tr>
                    {foreachelse}
                        <tr>
                            <td colspan="5" class="norecords">
                                <div class="flex items-center">
                                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" width="32"
                                        height="32" viewBox="0 0 32 32">
                                        <title>Folder-Hide</title>
                                        <path
                                            d="M31.333 14c-0.368 0-0.667-0.299-0.667-0.667v-0.667c0-0.368 0.299-0.667 0.667-0.667 0.367 0 0.667 0.299 0.667 0.667v0.667c0 0.368-0.3 0.667-0.667 0.667zM31.333 10.845c-0.368 0-0.667-0.299-0.667-0.667v-0.845c0-0.115-0.005-0.229-0.016-0.344-0.031-0.367 0.243-0.692 0.609-0.72 0.372-0.033 0.691 0.241 0.72 0.609 0.015 0.151 0.020 0.301 0.020 0.455v0.845c0 0.368-0.3 0.667-0.667 0.667zM30.469 7.293c-0.208 0-0.415-0.097-0.544-0.279-0.205-0.291-0.451-0.552-0.725-0.777-0.285-0.233-0.328-0.653-0.095-0.939 0.235-0.285 0.653-0.327 0.94-0.095 0.365 0.301 0.693 0.649 0.967 1.035 0.213 0.3 0.143 0.716-0.155 0.929-0.119 0.085-0.256 0.125-0.388 0.125zM27.377 5.387c-0.033 0-0.068-0.003-0.101-0.008-0.199-0.029-0.401-0.045-0.609-0.045h-0.532c-0.368 0-0.667-0.299-0.667-0.667s0.299-0.667 0.667-0.667h0.532c0.276 0 0.547 0.021 0.808 0.061 0.363 0.056 0.613 0.395 0.559 0.759-0.049 0.331-0.333 0.567-0.656 0.567zM23.645 5.333h-1.245c-0.367 0-0.667-0.299-0.667-0.667s0.3-0.667 0.667-0.667h1.245c0.367 0 0.667 0.299 0.667 0.667s-0.299 0.667-0.667 0.667zM19.913 5.333h-1.244c-0.368 0-0.667-0.299-0.667-0.667s0.299-0.667 0.667-0.667h1.244c0.368 0 0.667 0.299 0.667 0.667s-0.299 0.667-0.667 0.667zM16.167 5.333h-0.667c-0.368 0-0.667-0.299-0.667-0.667 0-0.085-0.015-0.235-0.084-0.455-0.111-0.352 0.085-0.725 0.436-0.836s0.725 0.084 0.836 0.436c0.020 0.064 0.036 0.127 0.055 0.188h0.091c0.368 0 0.667 0.299 0.667 0.667s-0.3 0.667-0.667 0.667zM0.667 10.685c-0.368 0-0.667-0.299-0.667-0.667v-1.317c0-0.368 0.299-0.667 0.667-0.667s0.667 0.299 0.667 0.667v1.317c0 0.368-0.3 0.667-0.667 0.667zM0.667 6.732c-0.368 0-0.667-0.299-0.667-0.667v-0.983c0-0.131 0.004-0.26 0.016-0.389 0.029-0.367 0.341-0.639 0.72-0.611 0.367 0.031 0.64 0.352 0.611 0.72-0.009 0.093-0.013 0.187-0.013 0.28v0.983c0 0.369-0.3 0.667-0.667 0.667zM1.64 3c-0.141 0-0.284-0.045-0.405-0.139-0.292-0.224-0.347-0.643-0.123-0.935 0.312-0.405 0.672-0.76 1.072-1.052 0.299-0.217 0.715-0.152 0.932 0.143 0.217 0.299 0.153 0.716-0.144 0.933s-0.567 0.483-0.803 0.788c-0.132 0.172-0.329 0.261-0.529 0.261zM13.951 2.489c-0.165 0-0.329-0.060-0.459-0.183-0.293-0.277-0.6-0.5-0.912-0.663-0.327-0.169-0.452-0.572-0.283-0.899 0.171-0.327 0.571-0.453 0.899-0.284 0.423 0.22 0.832 0.515 1.215 0.879 0.268 0.252 0.279 0.676 0.025 0.943-0.131 0.136-0.307 0.207-0.485 0.207zM10.319 1.333h-1.319c-0.368 0-0.667-0.299-0.667-0.667s0.3-0.667 0.667-0.667h1.317c0.368 0 0.667 0.299 0.667 0.667s-0.297 0.667-0.665 0.667zM6.365 1.333h-1.316c-0.368 0-0.667-0.299-0.667-0.667s0.297-0.667 0.667-0.667h1.317c0.368 0 0.667 0.299 0.667 0.667s-0.3 0.667-0.668 0.667zM0.667 14c-0.368 0-0.667-0.299-0.667-0.667v-0.667c0-0.368 0.299-0.667 0.667-0.667s0.667 0.299 0.667 0.667v0.667c0 0.368-0.3 0.667-0.667 0.667zM6 32h-0.667c-0.368 0-0.667-0.3-0.667-0.667s0.299-0.667 0.667-0.667h0.667c0.367 0 0.667 0.3 0.667 0.667s-0.3 0.667-0.667 0.667zM25.888 32h-1.325c-0.368 0-0.667-0.3-0.667-0.667s0.299-0.667 0.667-0.667h1.325c0.367 0 0.667 0.3 0.667 0.667s-0.3 0.667-0.667 0.667zM21.911 32h-1.327c-0.367 0-0.667-0.3-0.667-0.667s0.3-0.667 0.667-0.667h1.327c0.368 0 0.667 0.3 0.667 0.667s-0.299 0.667-0.667 0.667zM17.932 32h-1.327c-0.368 0-0.667-0.3-0.667-0.667s0.299-0.667 0.667-0.667h1.327c0.368 0 0.667 0.3 0.667 0.667s-0.297 0.667-0.667 0.667zM13.953 32h-1.324c-0.368 0-0.667-0.3-0.667-0.667s0.299-0.667 0.667-0.667h1.325c0.368 0 0.667 0.3 0.667 0.667s-0.297 0.667-0.668 0.667zM9.976 32h-1.327c-0.368 0-0.667-0.3-0.667-0.667s0.299-0.667 0.667-0.667h1.327c0.368 0 0.667 0.3 0.667 0.667s-0.297 0.667-0.667 0.667zM4.695 32c-0.44 0-0.823-0.048-1.192-0.14-0.357-0.088-0.573-0.453-0.483-0.808 0.091-0.359 0.453-0.573 0.809-0.483 0.395 0.1 0.867 0.109 1.107 0.092 0.387-0.007 0.685 0.253 0.711 0.62s-0.252 0.687-0.62 0.711c-0.109 0.004-0.221 0.008-0.332 0.008zM28.521 31.819c-0.284 0-0.547-0.184-0.636-0.471-0.112-0.351 0.084-0.725 0.437-0.835 0.349-0.111 0.68-0.277 0.977-0.499 0.299-0.219 0.713-0.156 0.931 0.14 0.219 0.296 0.156 0.713-0.139 0.932-0.417 0.307-0.881 0.543-1.373 0.696-0.065 0.027-0.133 0.036-0.197 0.036zM7.371 30.963c-0.181 0-0.361-0.073-0.493-0.217-0.248-0.272-0.228-0.693 0.044-0.943 0.273-0.249 0.501-0.539 0.677-0.861s0.581-0.443 0.904-0.268c0.324 0.176 0.444 0.581 0.268 0.904-0.248 0.456-0.567 0.863-0.951 1.213-0.127 0.115-0.289 0.172-0.449 0.172zM1.492 30.451c-0.2 0-0.397-0.088-0.528-0.26-0.317-0.412-0.561-0.869-0.725-1.361-0.116-0.351 0.073-0.727 0.423-0.843 0.349-0.115 0.727 0.073 0.843 0.421s0.289 0.673 0.516 0.969c0.224 0.292 0.171 0.709-0.121 0.933-0.121 0.096-0.265 0.14-0.407 0.14zM31.184 29.084c-0.061 0-0.121-0.009-0.184-0.027-0.355-0.1-0.56-0.469-0.459-0.823 0.081-0.292 0.123-0.593 0.123-0.901v-0.228c0-0.368 0.3-0.667 0.667-0.667 0.368 0 0.667 0.299 0.667 0.667v0.228c0 0.429-0.057 0.855-0.175 1.264-0.080 0.293-0.349 0.487-0.639 0.487zM8.667 27.353c-0.368 0-0.667-0.299-0.667-0.667v-1.327c0-0.365 0.299-0.667 0.667-0.667s0.667 0.3 0.667 0.667v1.327c0 0.368-0.3 0.667-0.667 0.667zM0.667 26.657c-0.368 0-0.667-0.301-0.667-0.667v-1.325c0-0.368 0.299-0.667 0.667-0.667s0.667 0.299 0.667 0.667v1.325c0 0.369-0.3 0.667-0.667 0.667zM31.333 25.12c-0.368 0-0.667-0.299-0.667-0.667v-1.327c0-0.365 0.299-0.667 0.667-0.667 0.367 0 0.667 0.301 0.667 0.667v1.327c0 0.368-0.3 0.667-0.667 0.667zM8.667 23.375c-0.368 0-0.667-0.301-0.667-0.667v-1.327c0-0.368 0.299-0.667 0.667-0.667s0.667 0.299 0.667 0.667v1.327c0 0.371-0.3 0.667-0.667 0.667zM0.667 22.681c-0.368 0-0.667-0.299-0.667-0.667v-1.327c0-0.365 0.299-0.667 0.667-0.667s0.667 0.301 0.667 0.667v1.327c0 0.368-0.3 0.667-0.667 0.667zM31.333 21.14c-0.368 0-0.667-0.299-0.667-0.667v-1.325c0-0.368 0.299-0.667 0.667-0.667 0.367 0 0.667 0.299 0.667 0.667v1.325c0 0.371-0.3 0.667-0.667 0.667zM8.667 19.397c-0.368 0-0.667-0.299-0.667-0.667v-1.324c0-0.368 0.299-0.667 0.667-0.667s0.667 0.299 0.667 0.667v1.324c0 0.368-0.3 0.667-0.667 0.667zM0.667 18.703c-0.368 0-0.667-0.301-0.667-0.667v-1.327c0-0.368 0.299-0.667 0.667-0.667s0.667 0.299 0.667 0.667v1.327c0 0.368-0.3 0.667-0.667 0.667zM31.333 17.164c-0.368 0-0.667-0.3-0.667-0.667v-1.325c0-0.365 0.299-0.667 0.667-0.667 0.367 0 0.667 0.301 0.667 0.667v1.325c0 0.367-0.3 0.667-0.667 0.667zM8.667 15.419c-0.368 0-0.667-0.299-0.667-0.667v-1.325c0-0.368 0.299-0.667 0.667-0.667s0.667 0.299 0.667 0.667v1.325c0 0.369-0.3 0.667-0.667 0.667zM31.331 13.187c-0.359 0-0.653-0.283-0.667-0.64-0.013-0.369-0.087-0.731-0.221-1.076-0.135-0.343 0.036-0.729 0.38-0.863 0.341-0.132 0.729 0.037 0.863 0.381 0.189 0.484 0.292 0.992 0.311 1.509 0.013 0.368-0.276 0.677-0.641 0.691-0.008-0.003-0.016-0.003-0.024-0.003zM9.107 11.513c-0.103 0-0.207-0.024-0.305-0.075-0.329-0.168-0.457-0.571-0.287-0.897 0.236-0.459 0.545-0.873 0.919-1.233 0.263-0.255 0.687-0.248 0.943 0.019 0.255 0.265 0.247 0.687-0.019 0.943-0.269 0.257-0.491 0.556-0.66 0.884-0.116 0.229-0.351 0.36-0.591 0.36zM29.385 9.903c-0.117 0-0.237-0.028-0.344-0.096-0.317-0.192-0.661-0.327-1.021-0.403s-0.591-0.431-0.516-0.791c0.079-0.36 0.435-0.591 0.792-0.515 0.505 0.108 0.987 0.297 1.432 0.565 0.317 0.189 0.417 0.599 0.227 0.916-0.124 0.208-0.345 0.323-0.569 0.323zM12.252 9.355c-0.339 0-0.628-0.256-0.663-0.6-0.036-0.367 0.231-0.695 0.597-0.731 0.156-0.016 0.316-0.024 0.479-0.024h0.913c0.368 0 0.667 0.299 0.667 0.667s-0.3 0.667-0.667 0.667h-0.912c-0.116 0-0.232 0.005-0.345 0.017-0.023 0.003-0.045 0.004-0.069 0.004zM25.513 9.333h-1.327c-0.368 0-0.667-0.299-0.667-0.667s0.297-0.667 0.667-0.667h1.327c0.367 0 0.667 0.299 0.667 0.667s-0.3 0.667-0.667 0.667zM21.533 9.333h-1.325c-0.369 0-0.667-0.299-0.667-0.667s0.297-0.667 0.667-0.667h1.325c0.367 0 0.667 0.299 0.667 0.667s-0.296 0.667-0.667 0.667zM17.557 9.333h-1.327c-0.368 0-0.667-0.299-0.667-0.667s0.299-0.667 0.667-0.667h1.327c0.367 0 0.667 0.299 0.667 0.667s-0.3 0.667-0.667 0.667zM0.667 14.667c-0.368 0-0.667-0.299-0.667-0.667v-0.667c0-0.368 0.299-0.667 0.667-0.667s0.667 0.299 0.667 0.667v0.667c0 0.368-0.3 0.667-0.667 0.667z">
                                        </path>
                                    </svg>
                                    <div class="px-3">{$LANG.norecordsfound}</div>
                                </div>
                            </td>
                        </tr>
                    {/foreach}
                </tbody>
                {if $masspay = true && $clientsstats.numdueinvoices neq 0}
                    <tfoot>
                        <tr>
                            <td colspan="5" class="px-6 py-4 whitespace-nowrap">
                                <input type="submit" name="masspayselected" value="{$LANG.masspayselected}"
                                    class="btn btn-outlined btn-sm" />
                                <a class="btn btn-outlined btn-sm"
                                    href="{$WEB_ROOT}/clientarea.php?action=masspay&amp;all=true">{$LANG.masspayall}</a>
                            </td>
                        </tr>
                    </tfoot>
                {/if}
            </table>
        </form>
    </div>
</div>


<div class="grid grid-cols-1 gap-8 mb-10 xl:grid-cols-2 2xl:grid-cols-3">
    <div class="relative col-span-3 px-10 py-5 bg-white shadow-xl rounded-tl-xl rounded-br-xl">
        <h3 class="page-header-2"><span aria-hidden="true" class="icon icon-support"></span><span
                class="text-lg header-text">{$clientsstats.numactivetickets}
                {$LANG.supportticketsopentickets|replace:'Open Support Tickets':'Tickets'}</span></h3>
        <table class="min-w-full divide-y divide-gray-100 dark:divide-gray-900" id="mySupport">
            <thead class="bg-transparent dark:bg-black">
                <tr>
                    <th class="px-6 py-3 text-xs font-medium tracking-wider text-left text-gray-500 uppercase">
                        {$LANG.supportticketssubject}
                    </th>
                    <th
                        class="hidden px-6 py-3 text-xs font-medium tracking-wider text-left text-gray-500 uppercase lg:table-cell">
                        {$LANG.supportticketsdepartment}
                    </th>
                    <th
                        class="hidden px-6 py-3 text-xs font-medium tracking-wider text-left text-gray-500 uppercase sm:table-cell">
                        {$LANG.supportticketsstatus}
                    </th>
                    <th
                        class="hidden px-6 py-3 text-xs font-medium tracking-wider text-left text-gray-500 uppercase lg:table-cell">
                        {$LANG.supportticketsticketurgency}
                    </th>
                    <th
                        class="hidden px-6 py-3 text-xs font-medium tracking-wider text-left text-right text-gray-500 uppercase lg:table-cell">
                        {$LANG.supportticketsticketlastupdated}
                    </th>
                </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-100 dark:divide-gray-900 dark:bg-transparent">
                {foreach from=$tickets item=ticket}
                    {assign var="label" value="text-primary-600"}
                    {if $ticket.status|strstr:"779500"}{assign var="label" value="text-green-600"}
                    {elseif $ticket.status|strstr:"000000"}{assign var="label" value="text-black dark:text-white"}
                    {elseif $ticket.status|strstr:"888888"}{assign var="label" value="text-gray-600"}
                    {elseif $ticket.status|strstr:"ff6600"}{assign var="label" value="text-orange-600"}
                    {elseif $ticket.status|strstr:"224488"}{assign var="label" value="text-blue-600"}
                    {elseif $ticket.status|strstr:"cc0000"}{assign var="label" value="text-red-600"}
                    {/if}
                    <tr>
                        <td class="px-6 py-4">
                            <a href="{$WEB_ROOT}/viewticket.php?tid={$ticket.tid}&amp;c={$ticket.c}">{$ticket.subject}</a>
                            <ul class="lg:hidden">
                                <li class="sm:hidden">
                                    <span class="pl-0 label {$label}">{$ticket.status|strip_tags:false}</span>
                                </li>
                                <li>{$LANG.supportticketsticketlastupdated}: {$ticket.lastreply}</li>
                                <li>{$LANG.supportticketsdepartment}: {$ticket.department}</li>
                                <li>{$LANG.supportticketsticketurgency}: {$ticket.urgency}</li>
                            </ul>
                        </td>
                        <td class="hidden px-6 py-4 whitespace-nowrap lg:table-cell">{$ticket.department}</td>
                        <td class="hidden px-6 py-4 sm:table-cell whitespace-nowrap">
                            <span class="label {$label}">{$ticket.status|strip_tags:false}</span>
                        </td>
                        <td class="hidden px-6 py-4 whitespace-nowrap lg:table-cell">{$ticket.urgency}</td>
                        <td class="hidden px-6 py-4 text-right whitespace-nowrap lg:table-cell">{$ticket.lastreply}</td>
                    </tr>
                {foreachelse}
                    <tr>
                        <td colspan="5" class="norecords">
                            <div class="flex items-center">
                                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" width="32" height="32"
                                    viewBox="0 0 32 32">
                                    <title>Folder-Hide</title>
                                    <path
                                        d="M31.333 14c-0.368 0-0.667-0.299-0.667-0.667v-0.667c0-0.368 0.299-0.667 0.667-0.667 0.367 0 0.667 0.299 0.667 0.667v0.667c0 0.368-0.3 0.667-0.667 0.667zM31.333 10.845c-0.368 0-0.667-0.299-0.667-0.667v-0.845c0-0.115-0.005-0.229-0.016-0.344-0.031-0.367 0.243-0.692 0.609-0.72 0.372-0.033 0.691 0.241 0.72 0.609 0.015 0.151 0.020 0.301 0.020 0.455v0.845c0 0.368-0.3 0.667-0.667 0.667zM30.469 7.293c-0.208 0-0.415-0.097-0.544-0.279-0.205-0.291-0.451-0.552-0.725-0.777-0.285-0.233-0.328-0.653-0.095-0.939 0.235-0.285 0.653-0.327 0.94-0.095 0.365 0.301 0.693 0.649 0.967 1.035 0.213 0.3 0.143 0.716-0.155 0.929-0.119 0.085-0.256 0.125-0.388 0.125zM27.377 5.387c-0.033 0-0.068-0.003-0.101-0.008-0.199-0.029-0.401-0.045-0.609-0.045h-0.532c-0.368 0-0.667-0.299-0.667-0.667s0.299-0.667 0.667-0.667h0.532c0.276 0 0.547 0.021 0.808 0.061 0.363 0.056 0.613 0.395 0.559 0.759-0.049 0.331-0.333 0.567-0.656 0.567zM23.645 5.333h-1.245c-0.367 0-0.667-0.299-0.667-0.667s0.3-0.667 0.667-0.667h1.245c0.367 0 0.667 0.299 0.667 0.667s-0.299 0.667-0.667 0.667zM19.913 5.333h-1.244c-0.368 0-0.667-0.299-0.667-0.667s0.299-0.667 0.667-0.667h1.244c0.368 0 0.667 0.299 0.667 0.667s-0.299 0.667-0.667 0.667zM16.167 5.333h-0.667c-0.368 0-0.667-0.299-0.667-0.667 0-0.085-0.015-0.235-0.084-0.455-0.111-0.352 0.085-0.725 0.436-0.836s0.725 0.084 0.836 0.436c0.020 0.064 0.036 0.127 0.055 0.188h0.091c0.368 0 0.667 0.299 0.667 0.667s-0.3 0.667-0.667 0.667zM0.667 10.685c-0.368 0-0.667-0.299-0.667-0.667v-1.317c0-0.368 0.299-0.667 0.667-0.667s0.667 0.299 0.667 0.667v1.317c0 0.368-0.3 0.667-0.667 0.667zM0.667 6.732c-0.368 0-0.667-0.299-0.667-0.667v-0.983c0-0.131 0.004-0.26 0.016-0.389 0.029-0.367 0.341-0.639 0.72-0.611 0.367 0.031 0.64 0.352 0.611 0.72-0.009 0.093-0.013 0.187-0.013 0.28v0.983c0 0.369-0.3 0.667-0.667 0.667zM1.64 3c-0.141 0-0.284-0.045-0.405-0.139-0.292-0.224-0.347-0.643-0.123-0.935 0.312-0.405 0.672-0.76 1.072-1.052 0.299-0.217 0.715-0.152 0.932 0.143 0.217 0.299 0.153 0.716-0.144 0.933s-0.567 0.483-0.803 0.788c-0.132 0.172-0.329 0.261-0.529 0.261zM13.951 2.489c-0.165 0-0.329-0.060-0.459-0.183-0.293-0.277-0.6-0.5-0.912-0.663-0.327-0.169-0.452-0.572-0.283-0.899 0.171-0.327 0.571-0.453 0.899-0.284 0.423 0.22 0.832 0.515 1.215 0.879 0.268 0.252 0.279 0.676 0.025 0.943-0.131 0.136-0.307 0.207-0.485 0.207zM10.319 1.333h-1.319c-0.368 0-0.667-0.299-0.667-0.667s0.3-0.667 0.667-0.667h1.317c0.368 0 0.667 0.299 0.667 0.667s-0.297 0.667-0.665 0.667zM6.365 1.333h-1.316c-0.368 0-0.667-0.299-0.667-0.667s0.297-0.667 0.667-0.667h1.317c0.368 0 0.667 0.299 0.667 0.667s-0.3 0.667-0.668 0.667zM0.667 14c-0.368 0-0.667-0.299-0.667-0.667v-0.667c0-0.368 0.299-0.667 0.667-0.667s0.667 0.299 0.667 0.667v0.667c0 0.368-0.3 0.667-0.667 0.667zM6 32h-0.667c-0.368 0-0.667-0.3-0.667-0.667s0.299-0.667 0.667-0.667h0.667c0.367 0 0.667 0.3 0.667 0.667s-0.3 0.667-0.667 0.667zM25.888 32h-1.325c-0.368 0-0.667-0.3-0.667-0.667s0.299-0.667 0.667-0.667h1.325c0.367 0 0.667 0.3 0.667 0.667s-0.3 0.667-0.667 0.667zM21.911 32h-1.327c-0.367 0-0.667-0.3-0.667-0.667s0.3-0.667 0.667-0.667h1.327c0.368 0 0.667 0.3 0.667 0.667s-0.299 0.667-0.667 0.667zM17.932 32h-1.327c-0.368 0-0.667-0.3-0.667-0.667s0.299-0.667 0.667-0.667h1.327c0.368 0 0.667 0.3 0.667 0.667s-0.297 0.667-0.667 0.667zM13.953 32h-1.324c-0.368 0-0.667-0.3-0.667-0.667s0.299-0.667 0.667-0.667h1.325c0.368 0 0.667 0.3 0.667 0.667s-0.297 0.667-0.668 0.667zM9.976 32h-1.327c-0.368 0-0.667-0.3-0.667-0.667s0.299-0.667 0.667-0.667h1.327c0.368 0 0.667 0.3 0.667 0.667s-0.297 0.667-0.667 0.667zM4.695 32c-0.44 0-0.823-0.048-1.192-0.14-0.357-0.088-0.573-0.453-0.483-0.808 0.091-0.359 0.453-0.573 0.809-0.483 0.395 0.1 0.867 0.109 1.107 0.092 0.387-0.007 0.685 0.253 0.711 0.62s-0.252 0.687-0.62 0.711c-0.109 0.004-0.221 0.008-0.332 0.008zM28.521 31.819c-0.284 0-0.547-0.184-0.636-0.471-0.112-0.351 0.084-0.725 0.437-0.835 0.349-0.111 0.68-0.277 0.977-0.499 0.299-0.219 0.713-0.156 0.931 0.14 0.219 0.296 0.156 0.713-0.139 0.932-0.417 0.307-0.881 0.543-1.373 0.696-0.065 0.027-0.133 0.036-0.197 0.036zM7.371 30.963c-0.181 0-0.361-0.073-0.493-0.217-0.248-0.272-0.228-0.693 0.044-0.943 0.273-0.249 0.501-0.539 0.677-0.861s0.581-0.443 0.904-0.268c0.324 0.176 0.444 0.581 0.268 0.904-0.248 0.456-0.567 0.863-0.951 1.213-0.127 0.115-0.289 0.172-0.449 0.172zM1.492 30.451c-0.2 0-0.397-0.088-0.528-0.26-0.317-0.412-0.561-0.869-0.725-1.361-0.116-0.351 0.073-0.727 0.423-0.843 0.349-0.115 0.727 0.073 0.843 0.421s0.289 0.673 0.516 0.969c0.224 0.292 0.171 0.709-0.121 0.933-0.121 0.096-0.265 0.14-0.407 0.14zM31.184 29.084c-0.061 0-0.121-0.009-0.184-0.027-0.355-0.1-0.56-0.469-0.459-0.823 0.081-0.292 0.123-0.593 0.123-0.901v-0.228c0-0.368 0.3-0.667 0.667-0.667 0.368 0 0.667 0.299 0.667 0.667v0.228c0 0.429-0.057 0.855-0.175 1.264-0.080 0.293-0.349 0.487-0.639 0.487zM8.667 27.353c-0.368 0-0.667-0.299-0.667-0.667v-1.327c0-0.365 0.299-0.667 0.667-0.667s0.667 0.3 0.667 0.667v1.327c0 0.368-0.3 0.667-0.667 0.667zM0.667 26.657c-0.368 0-0.667-0.301-0.667-0.667v-1.325c0-0.368 0.299-0.667 0.667-0.667s0.667 0.299 0.667 0.667v1.325c0 0.369-0.3 0.667-0.667 0.667zM31.333 25.12c-0.368 0-0.667-0.299-0.667-0.667v-1.327c0-0.365 0.299-0.667 0.667-0.667 0.367 0 0.667 0.301 0.667 0.667v1.327c0 0.368-0.3 0.667-0.667 0.667zM8.667 23.375c-0.368 0-0.667-0.301-0.667-0.667v-1.327c0-0.368 0.299-0.667 0.667-0.667s0.667 0.299 0.667 0.667v1.327c0 0.371-0.3 0.667-0.667 0.667zM0.667 22.681c-0.368 0-0.667-0.299-0.667-0.667v-1.327c0-0.365 0.299-0.667 0.667-0.667s0.667 0.301 0.667 0.667v1.327c0 0.368-0.3 0.667-0.667 0.667zM31.333 21.14c-0.368 0-0.667-0.299-0.667-0.667v-1.325c0-0.368 0.299-0.667 0.667-0.667 0.367 0 0.667 0.299 0.667 0.667v1.325c0 0.371-0.3 0.667-0.667 0.667zM8.667 19.397c-0.368 0-0.667-0.299-0.667-0.667v-1.324c0-0.368 0.299-0.667 0.667-0.667s0.667 0.299 0.667 0.667v1.324c0 0.368-0.3 0.667-0.667 0.667zM0.667 18.703c-0.368 0-0.667-0.301-0.667-0.667v-1.327c0-0.368 0.299-0.667 0.667-0.667s0.667 0.299 0.667 0.667v1.327c0 0.368-0.3 0.667-0.667 0.667zM31.333 17.164c-0.368 0-0.667-0.3-0.667-0.667v-1.325c0-0.365 0.299-0.667 0.667-0.667 0.367 0 0.667 0.301 0.667 0.667v1.325c0 0.367-0.3 0.667-0.667 0.667zM8.667 15.419c-0.368 0-0.667-0.299-0.667-0.667v-1.325c0-0.368 0.299-0.667 0.667-0.667s0.667 0.299 0.667 0.667v1.325c0 0.369-0.3 0.667-0.667 0.667zM31.331 13.187c-0.359 0-0.653-0.283-0.667-0.64-0.013-0.369-0.087-0.731-0.221-1.076-0.135-0.343 0.036-0.729 0.38-0.863 0.341-0.132 0.729 0.037 0.863 0.381 0.189 0.484 0.292 0.992 0.311 1.509 0.013 0.368-0.276 0.677-0.641 0.691-0.008-0.003-0.016-0.003-0.024-0.003zM9.107 11.513c-0.103 0-0.207-0.024-0.305-0.075-0.329-0.168-0.457-0.571-0.287-0.897 0.236-0.459 0.545-0.873 0.919-1.233 0.263-0.255 0.687-0.248 0.943 0.019 0.255 0.265 0.247 0.687-0.019 0.943-0.269 0.257-0.491 0.556-0.66 0.884-0.116 0.229-0.351 0.36-0.591 0.36zM29.385 9.903c-0.117 0-0.237-0.028-0.344-0.096-0.317-0.192-0.661-0.327-1.021-0.403s-0.591-0.431-0.516-0.791c0.079-0.36 0.435-0.591 0.792-0.515 0.505 0.108 0.987 0.297 1.432 0.565 0.317 0.189 0.417 0.599 0.227 0.916-0.124 0.208-0.345 0.323-0.569 0.323zM12.252 9.355c-0.339 0-0.628-0.256-0.663-0.6-0.036-0.367 0.231-0.695 0.597-0.731 0.156-0.016 0.316-0.024 0.479-0.024h0.913c0.368 0 0.667 0.299 0.667 0.667s-0.3 0.667-0.667 0.667h-0.912c-0.116 0-0.232 0.005-0.345 0.017-0.023 0.003-0.045 0.004-0.069 0.004zM25.513 9.333h-1.327c-0.368 0-0.667-0.299-0.667-0.667s0.297-0.667 0.667-0.667h1.327c0.367 0 0.667 0.299 0.667 0.667s-0.3 0.667-0.667 0.667zM21.533 9.333h-1.325c-0.369 0-0.667-0.299-0.667-0.667s0.297-0.667 0.667-0.667h1.325c0.367 0 0.667 0.299 0.667 0.667s-0.296 0.667-0.667 0.667zM17.557 9.333h-1.327c-0.368 0-0.667-0.299-0.667-0.667s0.299-0.667 0.667-0.667h1.327c0.367 0 0.667 0.299 0.667 0.667s-0.3 0.667-0.667 0.667zM0.667 14.667c-0.368 0-0.667-0.299-0.667-0.667v-0.667c0-0.368 0.299-0.667 0.667-0.667s0.667 0.299 0.667 0.667v0.667c0 0.368-0.3 0.667-0.667 0.667z">
                                    </path>
                                </svg>
                                <div class="px-3">{$LANG.norecordsfound}</div>
                            </div>

                        </td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
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