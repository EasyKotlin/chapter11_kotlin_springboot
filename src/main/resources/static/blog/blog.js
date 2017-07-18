$(function () {

    // 保存文章
    $('#addArticleBtn').on('click', function () {
        saveArticle()
    })

    function saveArticle() {
        $.ajax({
            url: "saveArticle",
            data: $('#addArticleForm').serialize(),
            type: "POST",
            async: false,
            success: function (resp) {
                if (resp) {
                    saveArticleSuccess(resp)
                } else {
                    saveArticleFail()
                }
            },
            error: function () {
                saveArticleFail()
            }
        })
    }

    function saveArticleSuccess(resp) {
        alert('保存成功: ' + JSON.stringify(resp))
        window.open('detailArticleView?id=' + resp.id)
    }

    function saveArticleFail() {
        alert("保存失败！")
    }


})
