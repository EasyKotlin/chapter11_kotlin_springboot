<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Blog</title>
    <meta name="description"
          content="Blog, using Flat UI Kit Free is a Twitter Bootstrap Framework design and Theme, this responsive framework includes a PSD and HTML version."/>

    <meta name="viewport" content="width=1000, initial-scale=1.0, maximum-scale=1.0">

    <!-- Loading Bootstrap -->
    <link href="/dist/css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Loading Flat UI -->
    <link href="/dist/css/flat-ui.css" rel="stylesheet">
    <link href="/docs/assets/css/demo.css" rel="stylesheet">

    <link rel="shortcut icon" href="/img/favicon.ico">

    <script src="/dist/js/vendor/jquery.min.js"></script>
    <script src="/dist/js/flat-ui.js"></script>
    <script src="/dist/js/vendor/html5shiv.js"></script>
    <script src="/dist/js/vendor/respond.min.js"></script>
</head>

<body>
<div class="container">
    <h1>我的博客</h1>
    <table class="table table-responsive table-bordered">
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
            <td>${article.title}</td>
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
