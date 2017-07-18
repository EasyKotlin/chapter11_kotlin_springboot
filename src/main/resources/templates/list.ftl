<html>
<head>
    <title>Blog!!!</title>
</head>
<body>
<table>
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
</body>
</html>
