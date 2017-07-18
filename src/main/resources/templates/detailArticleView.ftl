<!DOCTYPE html>
<html>
<#include "common/head.ftl">
<body>
<#include "common/navbar.ftl">
<div class="container">
    <h3>${article.title}</h3>
    <h6>${article.author}</h6>
    <h6>${article.gmtModified}</h6>
    <textarea id="articleContentShow" placeholder="<#escape  x as x?html>${article.content}</#escape>" style="display:
              none"></textarea>
    <div id="article-content" class="markdown-body"></div>

</div>
</body>
<script>
    $(function () {
        // 文章详情 mditor
        var parser = new Mditor.Parser();
        var articleContent = document.getElementById('articleContentShow').placeholder //直接取原本的字符串。不会被转译，默认html页面中textarea区域text需要escape编码
        articleContent = unescape(articleContent);//unescape解码
        var html = parser.parse(articleContent);

        $('#article-content').append(html);

        hljs.initHighlightingOnLoad();
        //源码高亮
        $('pre code').each(function (i, block) {
            hljs.highlightBlock(block);
        });
    })
</script>
</html>
