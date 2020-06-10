<!--footer-->
<footer class="footer bg-dark pt-5 py-md-5">
    <div class="container-fluid container-xl">
        <div class="row">
            <div class="col-auto">
                <div class="brand d-flex flex-column align-items-center">
                    <header class="brand__top d-flex justify-content-between align-items-center w-100">
                        <a class="navbar-brand" href="{$_modx->config.site_url}">
                            <h1 class="text-hide" style="background-image: url('{'+logo_image' | placeholder}');">
                                {$_modx->config.name}
                            </h1>
                        </a>
                        <p class="navbar-top__title m-0 text-white">Завод бетонных изделий</p>
                    </header>
                    <section class="brand__center w-100 mt-3">
                        <ul class="list-unstyled d-flex justify-content-between">
                            <li class="brand__card"><img src="assets/templates/nova-st/img/footer/footer-card1.png" height="17" width="48"/></li>
                            <li class="brand__card"><img src="assets/templates/nova-st/img/footer/footer-card2.png" height="19" width="31"/></li>
                            <li class="brand__card"><img src="assets/templates/nova-st/img/footer/footer-card3.png" height="19" width="19"/></li>
                            <li class="brand__card"><img src="assets/templates/nova-st/img/footer/footer-card4.png" height="19" width="20"/></li>
                        </ul>
                    </section>
                    <footer class="brand__bottom w-100 mt-5">
                        <h6 class="text-left text-white ml-3">Подпишитесь на соцсети</h6>
                        <ul class="list-unstyled d-flex justify-content-around justify-content-md-start mt-3">
                            {if '+vk' | placeholder}
                            <li class="ml-3">
                                <a href="{'+vk' | placeholder}" target="_blank">
                                    <img src="assets/templates/nova-st/img/footer/vk .png" height="26" width="25"/>
                                </a></li>
                                {/if}
                            {if '+instagram' | placeholder}
                            <li class="ml-3">
                                <a href="{'+instagram' | placeholder}" target="_blank">
                                    <img src="assets/templates/nova-st/img/footer/instagram.png" height="26" width="25"/>
                                </a>
                            </li>
                            {/if}
                            {if '+facebook' | placeholder}
                            <li class="ml-3">
                                <a href="{'+facebook' | placeholder}" target="_blank">
                                    <img src="assets/templates/nova-st/img/footer/facebook.png" height="26" width="25"/>
                                </a>
                            </li>
                            {/if}
                        </ul>
                    </footer>

                </div>            </div>
            <div class="col-6 col-md-auto">

                    {$_modx->runSnippet("pdoMenu", [
                    "parents" => 0,
                    "level" => 1,
                    "hereClass" => 'active',
                    'tplOuter' => '@INLINE <ul class="nav flex-md-column justify-content-md-center justify-content-lg-between">{$wrapper}</ul>',
                    'tpl' => '@INLINE <li class="nav-item {$classnames}"><a class="nav-link text-white"  href="{$link}" {$attributes}>{$menutitle}</a></li>',
                    ])}
            </div>
            <div class="col-lg-6">
                <div class="card border-0 border-r0 bg-transparent">
                    <div class="row no-gutters">
                        <div class="col-md-7 pr-3">
                            <div class="card-body d-sm-flex flex-md-column align-items-end justify-content-between px-0 p-md-0">
                                <div class="media ml-3">
                                    <h6 class="fas fa-map-marker-alt m-0 text-muted"></h6>
                                    <div class="media-body media-body__address ml-3">
                                        {if '+address' | placeholder }
                                        <h6 class="mt-0 text-white">{'+address' | placeholder}</h6>
                                        {/if}
                                        {if '+working_day' | placeholder}
                                        <p class="text-muted m-0">{'+working_day' | placeholder}</p>
                                        {/if}
                                    </div>
                                </div>
                                <ul class="list-unstyled pt-5">
                                    {if '+phone1' | placeholder }
                                    <li><p class="text-white text-right mb-0">+{'+phone1' | placeholder}</p></li>
                                    {/if}
                                    {if '+phone2' | placeholder }
                                    <li><p class="text-white text-right mb-0">+{'+phone2' | placeholder}</p></li>
                                    {/if}
                                </ul>
                                <div class="card-body__button pt-md-5">
                                    <button type="button" class="btn btn-outline-danger btn-call ml-3 px-4 py-2"
                                            data-toggle="modal"
                                            data-target="#modalFeedback"
                                    >Заказать звонок
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            {if '+map' | placeholder }
                            <div style="width: 100%">
                                {'+map' | placeholder}
                            </div>
                            {/if}
                            <br/>
                        </div>
                    </div>
                </div>            </div>
        </div>
    </div>
</footer>