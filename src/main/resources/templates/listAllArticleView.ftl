<!DOCTYPE html>
<html>
<#include "common/head.ftl">
<body>
<#include "common/navbar.ftl">
<div class="container">
    <h1>我的博客</h1>

    <a href="addArticleView" target="_blank" class="btn btn-primary pull-right add-article">写文章</a>

    <table id="articlesDataTable" class="table table-responsive table-bordered">
        <thead>
        <th>序号</th>
        <th>标题</th>
        <th>作者</th>
        <th>发表时间</th>
        <th>操作</th>
        </thead>
        <tbody>
        <#-- 使用FTL指令 -->
        <#list articles as article>
        <tr>
            <td>${article.id}</td>
            <td><a target="_blank" href="detailArticleView?id=${article.id}">${article.title}</a></td>
            <td>${article.author}</td>
            <td>${article.gmtModified}</td>
            <td><a href="#" target="_blank">编辑</a></td>
        </tr>
        </#list>
        </tbody>
    </table>
</div>
</body>
</html>
