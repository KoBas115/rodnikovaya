<header class="header">
    <div class="container">
        <div class="header-wrap">
            <button class="btn header-menu" type="button">
                {include "components/icon.tpl" icon=["file" => "sprite", "class" => "header-menu__icon", "name" => "burger"]}
            </button>
            <a class="link header-phone" href="tel:88007075227">
                <span class="header-phone__num">8-800-707-52-27</span>
                {include "components/icon.tpl" icon=["file" => "sprite", "class" => "header-phone__icon", "name" => "phone"]}
            </a>
            <a class="link header-logo" href="/">
                {include "components/icon.tpl" icon=["file" => "sprite", "class" => "header-logo__icon", "name" => "header-logo"]}
            </a>
            <a class="btn btn-default btn-white-trans-blue-blue header__btn" href="/">Оставить заявку</a>
        </div>
    </div>
</header>