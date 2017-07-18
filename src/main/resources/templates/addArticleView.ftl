<!DOCTYPE html>
<html>
<#include "common/head.ftl">
<body>
<#include "common/navbar.ftl">
<div class="container">
    <h2>写文章</h2>

    <form id="addArticleForm" class="form-horizontal">
        <div class="form-group">
            <input type="text" name="title" class="form-control" placeholder="文章标题">
        </div>
        <div class="form-group">
            <input type="text" name="author" class="form-control" placeholder="作者">
        </div>

        <div class="form-group">
            <textarea id="articleContentEditor" type="text" name="content" class="form-control" rows="20"
                      placeholder=""></textarea>
        </div>

        <div class="form-group save-article">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-primary" id="addArticleBtn">保存并发表</button>
            </div>
        </div>
    </form>
</div>
<script>
    $(function () {
        //写文章 mditor
        var mditor = Mditor.fromTextarea(document.getElementById('articleContentEditor'));

        //是否打开分屏
        mditor.split = true;	//打开
        //是否打开预览
        mditor.preivew = true;	//打开
        //是否全屏
        mditor.fullscreen = false;	//关闭
        //获取或设置编辑器的值
        mditor.on('ready', function () {
            mditor.value = '# ';
        });
        hljs.initHighlightingOnLoad();
        //源码高亮
        $('pre code').each(function (i, block) {
            hljs.highlightBlock(block);
        });
    })
</script>
</body>
</html>
