{extends "./modal.tpl"}

{block modal}
    {* <section class="request">
        <h2 class="request__heading">Оставить заявку</h2>
        <div class="request__heading-txt">Оставьте свои контакты и мы перезвоним Вам</div>
        <form class="request__form">
            <div class="request__fields">
                <div class="request__input_wrap">
                    <label class="request__field request__field-name">
                        <input class="input-default request__input request__input-name" type="text" placeholder="Имя">
                    </label>
                </div>
                <div class="request__input_wrap">
                    <label class="request__field request__field-phone">
                        <input class="request__input request__input-phone" type="tel" placeholder="Телефон">
                    </label>
                </div>
                <input class="request__input request__input-from" type="hidden">
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
                <button class="request__submit btn btn-orange">
                    <span class="request-btn__txt">Отправить</span>
                </button>
            </div>
        </form>
    </section> *}
    <section class="modal__request">
        <div class="modal__request-left">
            <h2 class="title modal__request-title">отправить заявку</h2>
            <div class="request__heading-txt">Оставьте заявку и мы перезвоним Вам для уточнения подробностей по оплате</div>
            <form class="request__form">
                <div class="request__fields">
                    <div class="request__input_wrap">
                        <label class="request__field request__field-name">
                            <input class="input-default request__input request__input-name" type="text" placeholder="Имя">
                        </label>
                    </div>
                    <div class="request__input_wrap">
                        <label class="request__field request__field-phone">
                            <input class="request__input request__input-phone" type="tel" placeholder="Телефон">
                        </label>
                    </div>
                    <input class="request__input request__input-from" type="hidden">
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
                        <span>Согласие на обработку персональных данных</span>
                    </span>
                </label>
                <div class="request__bottom">
                    <button class="request__submit modal__request-btn btn btn-gold">
                        <span class="request-btn__txt">Отправить</span>
                    </button>
                </div>
            </form>
        </div>
        <picture>
            <source srcset="img/images/callback-img.webp" type="image/webp" media="(min-width: 1200px)">
            <source srcset="img/images/callback-img.jpg" media="(min-width: 1200px)">
            <source srcset="img/images/callback-img-tablet.webp" type="image/webp" media="(min-width: 768px)" >
            <source srcset="img/images/callback-img-tablet.jpg" media="(min-width: 768px)" >
            <source srcset="img/images/callback-img-mobile.webp" type="image/webp">
            <img class="modal__request-img" src="img/images/callback-img-mobile.jpg" alt="оставьте заявку и мы вам перезвоним">
        </picture>
    </section>
{/block}

