<div class="input__wrap input{if $input.mode == "radio"} input-radio{elseif $input.mode == "checkbox"} input-checkbox{elseif $input.mode == "slider"} input-slider{elseif $input.mode == "select"} input-select{else} input-default{/if}{if $input.class} {$input.class}{/if}{if $input.selector && $input.mode != "slider"} {$input.selector}{/if}{if $input.enable == "off"} disabled{/if}" {if $input.mode == "slider"}data-slider="{$input.selector}"{/if}>
    {if $icon}
        {if $icon.mode == "before"}
            {include "blocks/components/icon.tpl" icon=[
                "class" => $icon.class,
                "name" => $icon.name
            ]}
        {/if}
    {/if}

    {if $input.mode == "slider"}
        <label for="{$input.id}" class="input__default">
            <input class="input__field" type="text" id="{$input.id}" name="{$input.id}" value="{$input.value}" {if $input.enable == "off"} disabled{/if}>
            <div class="input__label">{$input.placeholder}</div>
            {if $special}<span class="input__special" 
            data-field="{$special.field.id}"
            data-value="{$special.field.value}">{$special.field.text}</span>{/if}
        </label>

        <input class="irs {$input.selector}" type="text" id="{$input.id}" data-step="{$slider.step}" data-min="{$slider.min.count}" data-max="{$slider.max.count}" data-from="{$input.value}">

        <div class="input__slider_sub">
            <span class="input__slider_desc">{$slider.min.name}</span>
            <span class="input__slider_desc">{$slider.max.name}</span>
        </div>
    {elseif $input.mode == "range"}
        <div class="range2">
            <div class="range2__title">
                <span class="minWrap" {if empty($input1.value)}style="display:none;"{/if}>от <span class="min">{int_format(floatval($input1.value))}</span></span>
                <span class="maxWrap" {if empty($input2.value)}style="display:none;"{/if}>до <span class="max">{int_format(floatval($input2.value))}</span></span>
                <span class="unitWrap" {if empty($input1.value) && empty($input2.value)}style="display:none;"{/if}>{$input.unit}</span>
                <span class="titleWrap" {if !empty($input1.value) || !empty($input2.value)}style="display:none;"{/if}>Стоимость</span>
            </div>
            <div class="range2__items">
                <div class="range2__controls">
                    <span class="range2__reload" data-default-min="{$input1.value}" data-default-max="{$input2.value}">Сбросить</span>
                    <span class="range2__close">
                        <svg width="14" height="14" viewBox="0 0 14 14" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M8.41425 7.00025L13.7072 1.70725C14.0982 1.31625 14.0982 0.68425 13.7072 0.29325C13.3162 -0.09775 12.6842 -0.09775 12.2933 0.29325L7.00025 5.58625L1.70725 0.29325C1.31625 -0.09775 0.68425 -0.09775 0.29325 0.29325C-0.09775 0.68425 -0.09775 1.31625 0.29325 1.70725L5.58625 7.00025L0.29325 12.2933C-0.09775 12.6842 -0.09775 13.3162 0.29325 13.7072C0.48825 13.9022 0.74425 14.0002 1.00025 14.0002C1.25625 14.0002 1.51225 13.9022 1.70725 13.7072L7.00025 8.41425L12.2933 13.7072C12.4882 13.9022 12.7443 14.0002 13.0002 14.0002C13.2562 14.0002 13.5122 13.9022 13.7072 13.7072C14.0982 13.3162 14.0982 12.6842 13.7072 12.2933L8.41425 7.00025Z"></path>
                        </svg>
                    </span>
                </div>
                <div class="range2__itemsInner">
                    <label for="{$input1.name}" class="range2__label">
                        <span class="range2__first">от</span>
                        <input class="input__field range2__input range2__input1" type="number" id="{$input1.name}"
                               name="{$input1.name}" value="{$input1.value}">
                        <span class="range2__unit">{$input.unit}</span>
                    </label>
                    <label for="{$input2.name}" class="range2__label">
                        <span class="range2__first">до</span>
                        <input class="input__field range2__input range2__input2" type="number" id="{$input2.name}"
                               name="{$input2.name}" value="{$input2.value}">
                        <span class="range2__unit">{$input.unit}</span>
                    </label>
                </div>
            </div>
        </div>
    {elseif $input.mode == "radio"}
        {foreach $radio as $key => $value}
            <label class="input__radio" for="{$key}">
                <input  class="input__field visually-hidden" type="radio" id="{$key}" name="{$input.id}" value="{$key}"
                     {if $input.value == $key}checked{/if}>
                <span class="radio__content">{$value}</span>
            </label>
        {/foreach}
    {elseif $input.mode == "checkbox"}
        <label for="{$input.id}" class="input__checkbox">
            <input class="checkbox__input visually-hidden" type="checkbox" name="{$input.id}" id="{$input.id}" value="{$input.value}" {if $input.enable == "off"} disabled{/if}>
            <span class="checkbox__frame"></span>
            <svg class="icon checkbox__mark">
                <use xlink:href="#icon_checkmark"></use>
            </svg>
            <div class="checkbox__content">
                {$input.placeholder}{if $input.note} <span>{$input.note}</span>{/if}
            </div>
        </label>
    {elseif $input.mode == "select"}
        <select name="{$input.id}" id="{$input.id}" class="input__select visually-hidden">
            <option value="">Не выбрано</option>
            {foreach $select.options as $idx => $value}
                <option value="{$idx}"{if $select.enable == $idx} selected{/if}>{$value}</option>
            {/foreach}
        </select>
        <div class="select2">
            {$title = $select.title}
            {foreach $select.options as $idx => $value}
                {if $select.enable == $idx}
                    {$title = $value}
                    {break}
                {/if}
            {/foreach}
            <div class="select2__title">{$title}</div>
            <div class="select2__items">
                {foreach $select.options as $idx => $value}
                    <span data-option="{$idx}" 
                    class="select2__item{if $select.enable == $idx} active{/if}">
                        {$value}
                    </span>
                {/foreach}
            </div>
        </div>
    {elseif $input.mode == "password"}
        <label for="{$input.id}" class="input__default {$input.selector}">
            <input class="input__field input__field-password" type="password" name="" value="{$input.value}" {if $input.enable == "off"} disabled{/if} placeholder="{$input.placeholder}">
            <span class="input__label">{$input.label}</span>
        </label>
    {else}
        <label for="{$input.id}" class="input__default {$input.selector}">
            <input class="input__field" type="text" name="{$input.id}" id="{$input.id}" value="{$input.value}" {if $input.enable == "off"} disabled{/if} placeholder="{$input.placeholder}">
            <span class="input__label">{$input.label}</span>
        </label>
    {/if}

    {if $icon}
        {if $icon.mode == "after"}
            {if $input.mode == "password"}<span class="password-see">{/if}
            {include "blocks/components/icon.tpl" icon=[
                "class" => $icon.class,
                "name" => $icon.name
            ]}
            {if $input.mode == "password"}</span>{/if}
            {if $input.mode == "password"}
                <span class="password-un-see">
                    {include "blocks/components/icon.tpl" icon=[
                        "class" => "input",
                        "name" => "un-eye"
                    ]}
                </span>
            {/if}
        {/if}
    {/if}
</div>