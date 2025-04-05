<section class="about">
    {include "components/icon.tpl" icon=["file" => "sprite", "class" => "about__mask-bg", "name" => "mask-bg"]}
    <div class="slider about-slider g-lazy-img">
        <div class="swiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="swiper-slide__wrap">
                        <div class="swiper-slide__left">
                            <div class="swiper-slide__left-wrap">
                                <h3 class="swiper-slide__title">
                                    завораживающей красоты местность
                                </h3>
                                <p class="swiper-slide__text">
                                    Жилой дом «На&nbsp;Родниковой» распологается в&nbsp;поселке Кореиз, на&nbsp;южном
                                    берегу
                                    Крымского полуострова, между двух поселков Мисхор и&nbsp;Гаспра, всего
                                    в&nbsp;10&nbsp;км
                                    от&nbsp;Ялты в&nbsp;сторону Алупки.
                                </p>
                                <p class="swiper-slide__text">
                                    Это идеальное место для тех, кто хочет жить, наслаждаясь прозрачным морем
                                    и&nbsp;дышать
                                    свежестью горного воздуха с&nbsp;тонкими нотами кипариса.
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide__right">
                            <picture>
                                <source srcset="#" data-src="/img/images/home/home-about001@1x.webp"
                                    media="(max-width: 767px)" type="image/webp">
                                <source srcset="#" data-src="/img/images/home/home-about001@1x.jpg"
                                    media="(max-width: 767px)">
                                <source srcset="#" data-src="/img/images/home/home-about001@2x.webp" type="image/webp">
                                <img class="image" src="#" data-src="/img/images/home/home-about001@2x.jpg" alt="about"
                                    width="978" height="700" loading="lazy" decoding="async">
                            </picture>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="swiper-slide__wrap">
                        <div class="swiper-slide__left">
                            <div class="swiper-slide__left-wrap">
                                <h3 class="swiper-slide__title">
                                    полное Единение с&nbsp;природой
                                </h3>
                                <p class="swiper-slide__text">
                                    Территория жилого дома частично находится в&nbsp;горно-лесном массиве, где
                                    располагаются
                                    детские и спортивные площадки, зоны отдыха с&nbsp;прогулочными тропинками и все это
                                    с&nbsp;
                                    сохранением существующей уникальной растительности данной местности.
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide__right">
                            <picture>
                                <source srcset="#" data-src="/img/images/home/home-about002@1x.webp"
                                    media="(max-width: 767px)" type="image/webp">
                                <source srcset="#" data-src="/img/images/home/home-about002@1x.jpg"
                                    media="(max-width: 767px)">
                                <source srcset="#" data-src="/img/images/home/home-about002@2x.webp" type="image/webp">
                                <img class="image" src="#" data-src="/img/images/home/home-about002@2x.jpg" alt="about"
                                    width="978" height="700" loading="lazy" decoding="async">
                            </picture>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="swiper-slide__wrap">
                        <div class="swiper-slide__left">
                            <div class="swiper-slide__left-wrap">
                                <h3 class="swiper-slide__title">
                                    в окружении истории
                                </h3>
                                <p class="swiper-slide__text">
                                    В&nbsp;часовой близости находится несколько дворцов, парков, ботанических садов и
                                    удивительных исторических достопримечательностей Крыма. Самыми известными являются
                                    Юсуповский дворец и дворец Дюльбер.
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide__right">
                            <picture>
                                <source srcset="#" data-src="/img/images/home/home-about003@1x.webp"
                                    media="(max-width: 767px)" type="image/webp">
                                <source srcset="#" data-src="/img/images/home/home-about003@1x.jpg"
                                    media="(max-width: 767px)">
                                <source srcset="#" data-src="/img/images/home/home-about003@2x.webp" type="image/webp">
                                <img class="image" src="#" data-src="/img/images/home/home-about003@2x.jpg" alt="about"
                                    width="978" height="700" loading="lazy" decoding="async">
                            </picture>
                        </div>
                    </div>
                </div>
            </div>
            <button class="btn slider-btn slider-btn__gold slider-btn__prev" type="button">
                {include "components/icon.tpl" icon=["file" => "sprite", "class" => "slider-btn__icon", "name" => "slider-arrow-prev"]}
            </button>
            <button class="btn slider-btn slider-btn__gold slider-btn__next" type="button">
                {include "components/icon.tpl" icon=["file" => "sprite", "class" => "slider-btn__icon", "name" => "slider-arrow-next"]}
            </button>
            <div class="swiper-pagination"></div>
        </div>
    </div>
</section>