{extends "page.tpl"}

{block main}
    {include "views/pages/home/hero.tpl"} {* Первый блок *}
    {include "views/pages/home/info.tpl"} {* инфо блок *}
    {include "views/pages/home/about.tpl"} {* эбаут блок *}
    {include "views/pages/home/safety.tpl"} {* сафети блок*}
    {include "views/pages/home/entrance.tpl"} {* ентранс блок*}
{/block}