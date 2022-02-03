<div class="providerLinkingFeedback"></div>
<form method="post" action="{routePath('login-validate')}" class="flex items-center justify-center h-screen login-form"
    role="form">
    <div class="w-full mt-8 sm:mx-auto sm:max-w-3xl">
        <div class="py-10 text-xl sm:text-4xl font-bold text-center uppercase text-primary-700 tracking-[0.75em]">
            Achieving <br />
            <span class="tracking-[0.5em]">your Dream</span>
        </div>
        <div class="px-10 py-10 bg-white rounded-md shadow-xl sm:px-36">
            <div class="mb-8 text-center">
                <h6 class="tracking-[0.5em] uppercase mb-5">{lang key='myaccount'}</h6>
                <div>
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5 text-black" viewBox="0 0 20 20"
                        fill="currentColor">
                        <path
                            d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                    </svg>

                </div>
            </div>
            {include file="$template/includes/flashmessage.tpl"}
            <div class="form-group">
                <label for="inputEmail" class="hidden form-control-label">{lang key='clientareaemail'}</label>
                <input type="email" class="border-2 border-black form-control form-control-lg" name="username"
                    id="inputEmail" placeholder="name@example.com" autofocus>
            </div>
            <div class="mb-4 form-group focused">
                <div class="d-flex align-items-center justify-content-between">
                    <label for="inputPassword" class="hidden form-control-label">{lang key='clientareapassword'}</label>
                </div>
                <input type="password" class="border-2 border-black form-control form-control-lg" name="password"
                    id="inputPassword" placeholder="{lang key='clientareapassword'}" autocomplete="off">
            </div>
            {if $captcha->isEnabled()}
                {include file="$template/includes/captcha.tpl"}
            {/if}
            <div class="pt-3 pb-1 text-center">
                <button id="login" type="submit"
                    class="btn btn-lg text-lg btn-block tracking-[0.5em] btn-primary{$captcha->getButtonClass($captchaForm)}">
                    {lang key='loginbutton'}
                </button>
            </div>
            <div class="text-right">
                <label>
                    <input type="checkbox" class="form-check-input" name="rememberme" />
                    {lang key='loginrememberme'}
                </label>
            </div>
            <div class="text-center">
                <small>{lang key='userLogin.notRegistered'}</small>
                <a href="{$WEB_ROOT}/register.php"
                    class="small font-weight-bold">{lang key='userLogin.createAccount'}</a>
                <div class="mb-2">
                    <a href="{routePath('password-reset-begin')}" class="small text-muted"
                        tabindex="-1">{lang key='forgotpw'}</a>
                </div>
            </div>
        </div>
    </div>
</form>

{include file="$template/includes/linkedaccounts.tpl" linkContext="login" customFeedback=true}