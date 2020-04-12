<header class="header">
    <div class="navbar navbar-expand-lg navbar-light navbar-top bg-white">
        <div class="container-fluid container-xl">
            <div class="row row-cols-2 justify-content-between align-items-center w-100">
                <div class="col-10 col-sm-5 col-md-auto brand d-flex align-items-center">
                    <a class="navbar-brand" href="{$_modx->config.site_url}">
                        <h1 class="text-hide"
                            style="background-image: url('assets/templates/nova-st/img/svg/logo.svg');">
                            {$_modx->config.name}
                        </h1>
                    </a>
                    <p class="navbar-top__title m-0">Завод бетонных изделий</p>
                </div>
                <!-- Button trigger modal feedback-->
                <a href="tel:74953747061" class="col-1 d-md-none">
                    <i class="order-call-icon"></i>
                </a>

                <div class="col-auto d-sm-flex align-items-center d-none">
                    <div class="media align-items-center ml-3 d-none d-md-flex">
                        <h4 class="fas fa-map-marker-alt m-0 text-muted"></h4>
                        <div class="media-body media-body__address ml-3">
                            <h6 class="mt-0">Моск. область, посёлок Нахабино, ул Победы дом 3</h6>
                            <p class="text-muted m-0">Ежедневно с 09:00 - 20:00</p>
                        </div>
                    </div>
                    <div class="media align-items-center ml-3">
                        <div class="media-body media-body__contact ml-3">
                            <h5 class="m-0 font-weight-bold">+7 495 374 70 61</h5>
                            <a href="tel:74953747061" class="text-dark">
                                <i class="fab fa-whatsapp text-success"></i>
                                Написать в WhatsUp
                            </a>
                        </div>
                    </div>
                    <!-- Button trigger modal feedback-->
                    <button type="button" class="btn btn-outline-danger btn-call ml-3 px-4 py-2" data-toggle="modal"
                            data-target="#modalFeedback">Заказать звонок
                    </button>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-light navbar-bottom bg-white py-0 border-top border-bottom">
        <button class="navbar-toggler border-0" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <ul class="nav justify-content-end d-lg-none">
            <li class="nav-item">
                <div class="btn-group" role="group" aria-label="Basic example">
                    <a href="#" class="btn btn-group__cart btn-outline-dark border-0 py-2">
                        <i class="cart-icon"></i>

                    </a>
                    <button class="btn btn-warning btn-group_price py-2" data-toggle="modal" data-target="#modalPrice">
                        <i class="download-icon"></i>
                        <span class="ml-2 d-none d-sm-inline-block">Скачать прайс-лист</span>
                    </button>
                </div>
            </li>
        </ul>
        <div class="container-fluid container-xl">
            <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
                {$_modx->runSnippet("pdoMenu", [
                "parents" => 0,
                "level" => 2,
                'tplOuter' => '@INLINE <ul class="nav nav-pills nav-fill align-items-baseline align-items-md-center">{$wrapper}</ul>',
                'tpl' => '@INLINE <li class="nav-item px-2 "><a class="nav-link h-100 py-3 px-0" href="{$link}">{$menutitle}<span class="sr-only">
                        ({$menutitle})</span></a></li>',
                'tplParentRow' => '@INLINE <li class="dropdown nav-item px-2"  aria-labelledby="informationDropdown">
                                     <a class="nav-link dropdown-toggle h-100 py-3 px-0" href="{$link}" id="informationDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                 {$menutitle}<i class="fas fa-angle-down"></i> </a> {$wrapper} </li>',
                'tplInner' => '@INLINE  <div class="dropdown-menu" aria-labelledby="informationDropdown">{$wrapper}</div>',
                'tplInnerRow' => '@INLINE <a class="dropdown-item" href="{$link}" >{$menutitle}</a>'
                ])}
                <ul class="nav justify-content-end d-none d-lg-block">
                    <li class="nav-item">
                        <div class="btn-group" role="group" aria-label="Basic example">
                                {$_modx->runSnippet("!msMiniCart", [
                                    'tpl'=>'@FILE chunks/tpl_minicart.tpl'
                                ])}
                            <button class="btn btn-warning btn-group_price my-2 my-sm-0 py-3 px-4" data-toggle="modal"
                                    data-target="#modalPrice">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path d="M11.2283 18.589C11.2539 18.6145 11.2806 18.6387 11.3086 18.6616C11.3208 18.6716 11.3338 18.6804 11.3464 18.6898C11.3622 18.7017 11.3778 18.714 11.3943 18.725C11.4097 18.7353 11.4257 18.7443 11.4415 18.7537C11.4562 18.7625 11.4706 18.7718 11.4857 18.7799C11.5019 18.7886 11.5187 18.7959 11.5352 18.8037C11.5509 18.8111 11.5663 18.819 11.5824 18.8256C11.5986 18.8323 11.6151 18.8377 11.6315 18.8436C11.6487 18.8497 11.6656 18.8563 11.6831 18.8616C11.6995 18.8665 11.7163 18.8702 11.7328 18.8744C11.7507 18.8789 11.7684 18.8839 11.7866 18.8876C11.8057 18.8913 11.8251 18.8936 11.8443 18.8964C11.8603 18.8986 11.876 18.9017 11.8922 18.9033C11.928 18.9068 11.9639 18.9087 11.9998 18.9087C12.0358 18.9087 12.0717 18.9068 12.1074 18.9033C12.1238 18.9017 12.1397 18.8986 12.1559 18.8963C12.175 18.8936 12.194 18.8913 12.2129 18.8876C12.2315 18.8839 12.2496 18.8788 12.2678 18.8742C12.284 18.87 12.3003 18.8665 12.3164 18.8617C12.3343 18.8562 12.3515 18.8495 12.3691 18.8433C12.3851 18.8374 12.4014 18.8322 12.4172 18.8257C12.4336 18.8189 12.4492 18.811 12.4651 18.8034C12.4815 18.7957 12.498 18.7884 12.514 18.7799C12.5293 18.7717 12.5437 18.7625 12.5584 18.7536C12.5742 18.7441 12.5902 18.7353 12.6056 18.7249C12.6217 18.7142 12.6369 18.7021 12.6524 18.6905C12.6654 18.6808 12.6787 18.6718 12.6914 18.6614C12.7179 18.6396 12.7433 18.6166 12.7677 18.5924C12.7688 18.5913 12.7702 18.5904 12.7712 18.5892L17.8623 13.4985C18.2883 13.0724 18.2883 12.3817 17.8623 11.9557C17.4363 11.5297 16.7456 11.5297 16.3195 11.9556L13.0907 15.1842V1.81796C13.0907 1.21549 12.6023 0.727051 11.9998 0.727051C11.3974 0.727051 10.9089 1.21549 10.9089 1.81796V15.1841L7.68041 11.9557C7.25444 11.5297 6.56368 11.5297 6.13764 11.9557C5.71161 12.3817 5.71161 13.0724 6.13764 13.4985L11.2283 18.589Z"
                                          fill="black"/>
                                    <path d="M22.9091 11.6362C22.3066 11.6362 21.8182 12.1247 21.8182 12.7271V21.0908H2.18182V12.7271C2.18182 12.1247 1.69338 11.6362 1.09091 11.6362C0.488436 11.6362 0 12.1247 0 12.7271V22.1817C0 22.7842 0.488436 23.2726 1.09091 23.2726H22.9091C23.5116 23.2726 24 22.7842 24 22.1817V12.7271C24 12.1247 23.5116 11.6362 22.9091 11.6362Z"
                                          fill="black"/>
                                </svg>
                                <span class="ml-2">Скачать прайс-лист</span></button>
                        </div>
                    </li>
                </ul>
                <hr class="d-md-none">
                <div class="col-auto d-flex flex-column align-items-center d-md-none px-0">
                    <div class="media align-items-center mt-4">
                        <h4 class="fas fa-map-marker-alt m-0 text-muted"></h4>
                        <div class="media-body media-body__address ml-3">
                            <h6 class="mt-0 fonts-size-10">Моск. область, посёлок Нахабино, ул Победы дом 3</h6>
                            <p class="text-muted m-0 fonts-size-10">Ежедневно с 09:00 - 20:00</p>
                        </div>
                    </div>
                    <div class="media align-items-center mt-4">
                        <div class="media-body media-body__contact ml-3">
                            <h5 class="m-0 font-weight-bold fonts-size-14">+7 495 374 70 61</h5>
                            <a href="tel:74953747061" class="text-dark fonts-size-12">
                                <i class="fab fa-whatsapp text-success"></i>
                                Написать в WhatsUp
                            </a>
                        </div>
                    </div>
                    <ul class="list-unstyled d-flex justify-content-around mt-4 w-100">
                        <li>
                            <a href="/">
                                <img src="assets/templates/nova-st/img/footer/vk .png" height="26" width="25"/>
                            </a></li>
                        <li>
                            <a href="/">
                                <img src="assets/templates/nova-st/img/footer/instagram.png" height="26" width="25"/>
                            </a>
                        </li>
                        <li>
                            <a href="/">
                                <img src="assets/templates/nova-st/img/footer/facebook.png" height="26" width="25"/>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>

