                    </div>

                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-md-none col-md-3 sidebar sidebar-secondary">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                    <div class="clearfix"></div>
                    </div>
                    </section>

                    <footer class="text-gray-600 bg-white dark:bg-gray-990 dark:text-gray-400">
                        <div class="container">
                            <div class="px-3 py-16 mx-auto md:flex md:items-center md:justify-between">
                                <div class="flex justify-center space-x-6 md:order-2">
                                    <ul>
                                        {include file="$template/includes/social-accounts.tpl"}
                                        {if $languagechangeenabled && count($locales) > 1 || $currencies}
                                            <li class="inline-block ml-5">
                                                <a class="flex items-center space-x-2" data-toggle="modal"
                                                    data-target="#modalChooseLanguage">
                                                    <div class="flex-shrink-0">
                                                        <div
                                                            class="iti-flag {if $activeLocale.countryCode === 'GB'}us{else}{$activeLocale.countryCode|lower}{/if}">
                                                        </div>
                                                    </div>
                                                    <div
                                                        class="text-sm font-medium text-gray-900 uppercase dark:text-gray-100">
                                                        {$activeLocale.localisedName}
                                                        /
                                                        {$activeCurrency.prefix}
                                                        {$activeCurrency.code}
                                                    </div>
                                                </a>
                                            </li>
                                        {/if}
                                    </ul>
                                </div>
                                <div class="md:order-1">
                                    <p class="text-sm text-center text-gray-400">
                                        {lang key="copyrightFooterNotice" year=$date_year company=$companyname}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </footer>

                    <div id="fullpage-overlay" class="w-hidden">
                        <div class="outer-wrapper">
                            <div class="inner-wrapper">
                                <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg" alt="">
                                <br>
                                <span class="msg"></span>
                            </div>
                        </div>
                    </div>

                    <div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title"></h5>
                                    <button type="button" class="close" data-dismiss="modal">
                                        <span aria-hidden="true">&times;</span>
                                        <span class="sr-only">{lang key='close'}</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    {lang key='loading'}
                                </div>
                                <div class="modal-footer">
                                    <div class="float-left loader">
                                        <i class="fas fa-circle-notch fa-spin"></i>
                                        {lang key='loading'}
                                    </div>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">
                                        {lang key='close'}
                                    </button>
                                    <button type="button" class="btn btn-primary modal-submit">
                                        {lang key='submit'}
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <form method="get" action="{$currentpagelinkback}">
                        <div class="modal modal-localisation" id="modalChooseLanguage" tabindex="-1" role="dialog">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-body">
                                        <button type="button" class="close text-light" data-dismiss="modal"
                                            aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>

                                        {if $languagechangeenabled && count($locales) > 1}
                                            <h5 class="pt-5 pb-3 h5">{lang key='chooselanguage'}</h5>
                                            <div class="row item-selector">
                                                <input type="hidden" name="language" value="">
                                                {foreach $locales as $locale}
                                                    <div class="col-4">
                                                        <a href="#" class="item{if $language == $locale.language} active{/if}"
                                                            data-value="{$locale.language}">
                                                            {$locale.localisedName}
                                                        </a>
                                                    </div>
                                                {/foreach}
                                            </div>
                                        {/if}
                                        {if !$loggedin && $currencies}
                                            <p class="pt-5 pb-3 h5">{lang key='choosecurrency'}</p>
                                            <div class="row item-selector">
                                                <input type="hidden" name="currency" value="">
                                                {foreach $currencies as $selectCurrency}
                                                    <div class="col-4">
                                                        <a href="#"
                                                            class="item{if $activeCurrency.id == $selectCurrency.id} active{/if}"
                                                            data-value="{$selectCurrency.id}">
                                                            {$selectCurrency.prefix} {$selectCurrency.code}
                                                        </a>
                                                    </div>
                                                {/foreach}
                                            </div>
                                        {/if}
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-default">{lang key='apply'}</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>

                    {if !$loggedin && $adminLoggedIn}
                        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin"
                            data-toggle="tooltip" data-placement="bottom"
                            title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
                            <i class="fas fa-redo-alt"></i>
                            <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
                        </a>
                    {/if}

                    {include file="$template/includes/generate-password.tpl"}

                    {$footeroutput}

                    </body>

</html>