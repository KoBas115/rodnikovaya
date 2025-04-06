{extends "./modal.tpl"}

{block modal}
    <div class="order-modal">
        {include "components/icon.tpl" icon=["file" => "sprite", "class" => "order__mask-bg", "name" => "mask-bg"]}
        <div class="order__wrap">
            <div class="order__left">
                <h3 class="order__title">оставить заявку </h3>
                <p class="order__text">Оставьте заявку на&nbsp;звонок и&nbsp;наш специалист свяжется с&nbsp;Вами
                    для&nbsp;обсуждения
                    деталей</p>
                {include "views/components/form.tpl"
                    formCompany=null
                    formFile=null
                    formClass="order-form"
                    formName="Ваше имя"
                    formPhone="8 (918)-235-345-67"
                    formEmail=null
                    formPass=null
                    formComment=null
                    formPrivacy="true"
                    formRemember=null
                    formBtnClass="btn-gold-gold-white-gold"
                    formBtnText="Оставить заявку"
                    formQuestion=null}
            </div>
            <div class="order__right g-lazy-img">
                <picture>
                    <source srcset="#" data-src="/img/images/home/order@2x.webp" type="image/webp">
                    <img class="image order__image" src="#" data-src="/img/images/home/order@2x.jpg" alt="Оставить заявку"
                        width="574" height="497">
                </picture>
            </div>
        </div>
    </div>
{/block}