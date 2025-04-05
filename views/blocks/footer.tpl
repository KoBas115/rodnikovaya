<footer class="footer g-lazy-img">
    <div class="container">
        <div class="footer__wrap">
            <div class="footer__cont">
                <div class="footer-contacts">
                    <h2 class="footer__title">контакты</h2>
                    <div class="footer-contacts__item">
                        <div class="footer-contacts__item-title">Адрес:</div>
                        <div class="footer-contacts__item-text">Республика Крым, г.Ялта, пгт.Кореиз, ул. Родниковая, 41а
                        </div>
                    </div>
                    <div class="footer-contacts__item">
                        <div class="footer-contacts__item-title">Телефон:</div>
                        <a class="link footer-contacts__item-link footer-contacts__item-text"
                            href="tel:88007075227">8-800-707-52-27</a>
                    </div>
                </div>
                <div class="footer__img-mob">
                    <picture>
                        <source srcset="#" data-src="/img/images/footer/footer-img@1x.webp" type="image/webp">
                        <img class="image" src="#" data-src="/img/images/footer/footer-img@1x.jpg"
                            alt="Жилой дом на родниковой" width="768" height="506" loading="lazy" decoding="async">
                    </picture>
                </div>
                <div class="footer__form">
                    <h2 class="footer__form-title">Оставить заявку</h2>
                    {include "views/components/form.tpl"
                    formCompany=null
                    formFile=null
                    formClass="footer-form"
                    formName="Ваше имя"
                    formPhone=null
                    formEmail="Ваша почта"
                    formPass=null
                    formComment=null
                    formPrivacy="true"
                    formRemember=null
                    formBtnClass="btn-gold-gold-blue-blue"
                    formBtnText="Оставить заявку"
                    formQuestion=null}
                </div>
            </div>
            <div class="footer__img-dsk">
                <picture>
                    <source srcset="#" data-src="/img/images/footer/footer-img@2x.webp" type="image/webp">
                    <img class="image" src="#" data-src="/img/images/footer/footer-img@2x.jpg"
                        alt="Жилой дом на родниковой" width="1073" height="544" loading="lazy" decoding="async">
                </picture>
            </div>
        </div>
    </div>
</footer>