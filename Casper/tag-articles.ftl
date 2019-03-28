<#--

    Solo - A small and beautiful blogging system written in Java.
    Copyright (c) 2010-2019, b3log.org & hacpai.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<#include "../../common-template/macro-common_head.ftl">
<!DOCTYPE html>
<html>
<head>
<@head title="${tag.tagTitle} ${tagLabel} - ${blogTitle}">
    <link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/base.css?${staticResourceVersion}"/>
</@head>
</head>
<body>
<div id="pjax">
    <#if pjax><!---- pjax {#pjax} start ----></#if>
<#include "marcr-header.ftl">
    <@header type='other'></@header>
    <div class="wrapper other">
        <h2 class="other__title"><a href="${servePath}/tags.html" class="ft__a">${allTagsLabel}</a> - ${tag.tagTitle}</h2>
        <div class="other__meta--list other__meta">
        ${tag.tagPublishedRefCount} ${tagLabel}
        </div>
        <#include "article-list.ftl">
    </div>
<#if pjax><!---- pjax {#pjax} end ----></#if>
</div>
<#include "footer.ftl">
</body>
</html>
