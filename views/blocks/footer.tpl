<section class="section section-footer">
    <div class="footer">
        <div class="footer__content">
            <div class="container">
            <h2 class="title title-footer">контакты</h2>
            <div class="footer__item footer__item-adress">
                <p class="footer__item-top">Адрес:</p>
                <p class="footer__item-bottom">{$address}</p>
            </div>
            <div class="footer__item footer__item-phone">
                <p class="footer__item-top">Телефон:</p>
                <a href="{$phone->link}" class="footer__item-bottom">{$phone->title}</a>
            </div>
        </div>
        <picture class="footer__img-mobile-wrap g-lazy-img">
            <source srcset="/img/no-img.webp" data-src="/img/images/footer/footer-img.webp" type="image/webp">
            <img src="/img/no-img.jpg" data-src="/img/images/footer/footer-img.jpg" class="footer__img-mobile" alt="контакты">
        </picture>
        <div class="container">
            <form class="request__form">
                <div class="request__fields">
                    <div class="request__input_wrap">
                        <label class="request__field request__field-phone">
                            <input class="request__input request__input-phone" type="tel" placeholder="Телефон">
                        </label>
                    </div>
                    <div class="request__input_wrap">
                        <label class="request__field request__field-name">
                            <input class="request__input request__input-name" type="text" placeholder="Ваше имя">
                        </label>
                    </div>
                    <input class="request__input request__input-from" type="hidden" value="форма в футере">
                    <input class="request__input-comment" type="hidden">
                </div>
                <label class="request__privacy">
                    <input class="request__checkbox" type="checkbox" checked>
                    <span class="request__checkboxImg">
                        {include "blocks/components/icon.tpl" icon=[
                            "class" => "request__checkboxCheck icon-check",
                            "name" => "check"
                        ]}
                    </span>
                    <span class="request__agreement" data-modal="privacy">
                        <span>Согласен(а) на обработку персональных данных</span>
                    </span>
                </label>
                <div class="request__bottom">
                    <button class="request__submit btn btn-gold">
                        <span class="request-btn__txt">Оставить заявку</span>
                    </button>
                </div>
            </form>
        </div>
        </div>
        <picture class="footer__img-wrap g-lazy-img"> 
            <source srcset="/img/no-img.webp" data-src="/img/images/footer/footer-img-desktop.webp" type="image/webp">
            <img class="footer__img"
                src="/img/no-img.webp"
                data-src="/img/images/footer/footer-img-desktop.jpg"
                alt="оставьте заявку и мы вам перезвоним"
                > 
        </picture>
    </div>
</section>