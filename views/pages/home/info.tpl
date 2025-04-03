<section class="info">
    <div class="info__image-bg g-lazy-img">
        <picture>
            <source srcset="#" data-src="/img/images/home/home-info-bg@1x.webp" media="(max-width: 767px)"
                type="image/webp">
            <source srcset="#" data-src="/img/images/home/home-info-bg@1x.png" media="(max-width: 767px)">
            <source srcset="#" data-src="/img/images/home/home-info-bg@2x.webp" type="image/webp">
            <img class="image" src="#" data-src="/img/images/home/home-info-bg@2x.png" alt="баннер" width="1920"
                height="873" loading="lazy" decoding="async">
        </picture>
    </div>
    <div class="container info__container">
        <div class="info__row">
            <div class="info__item">
                {include "components/icon.tpl" icon=["file" => "sprite", "class" => "info__item-icon", "name" => "info01"]}
                <h3 class="info__item-title">9</h3>
                <div class="info__item-text">этажей в доме</div>
            </div>
            <div class="info__item">
                {include "components/icon.tpl" icon=["file" => "sprite", "class" => "info__item-icon", "name" => "info02"]}
                <h3 class="info__item-title">100%</h3>
                <div class="info__item-text">видовых квартир</div>
            </div>
        </div>
        <div class="info__row">
            <div class="info__item">
                {include "components/icon.tpl" icon=["file" => "sprite", "class" => "info__item-icon", "name" => "info03"]}
                <h3 class="info__item-title">184</h3>
                <div class="info__item-text">квартиры на 2 подъезда</div>
            </div>
            <div class="info__item">
                {include "components/icon.tpl" icon=["file" => "sprite", "class" => "info__item-icon", "name" => "info04"]}
                <h3 class="info__item-title">30,8-81</h3>
                <div class="info__item-text">Площадь квартир,м²</div>
            </div>
        </div>
        <div class="info__row">
            <div class="info__item">
                {include "components/icon.tpl" icon=["file" => "sprite", "class" => "info__item-icon", "name" => "info05"]}
                <h3 class="info__item-title">2</h3>
                <div class="info__item-text">этажа паркинга</div>
            </div>
            <div class="info__item">
                {include "components/icon.tpl" icon=["file" => "sprite", "class" => "info__item-icon", "name" => "info06"]}
                <h3 class="info__item-title">7000</h3>
                <div class="info__item-text">Площадь всего участка,м²</div>
            </div>
        </div>
    </div>
</section>