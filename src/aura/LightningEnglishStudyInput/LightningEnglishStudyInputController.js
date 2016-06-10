({
    checkAnswer : function(component, event, helper) {
        // 解答チェック
        var isCorrect = helper.checkAnswer(component);
        // InputのCSSをクリア
        helper.clearInputStyle(component);
        // InputのCSSを追加
        helper.addInputStyle(component, isCorrect);
    }
})