({
    checkAnswer : function(component) {
        // 入力値
        var inputAnswer = component.get('v.answer');
        // 解答値
        var answer = component.get("v.englishTable.English__c");
        
        var isCorrect = false;
        if (inputAnswer == answer) {
            isCorrect = true;
            component.set("v.errorMessage", "");
        } else {
            isCorrect = false;
            component.set("v.errorMessage", answer);
        }
        return isCorrect;
    },
    clearInputStyle : function(component) {
        var el = component.find('input-answer');
        $A.util.removeClass(el.getElement(), 'correct');
        $A.util.removeClass(el.getElement(), 'incorrect');
    },
    addInputStyle : function(component, isCorrect) {
        // 入力値存在判定
        if (!component.get('v.answer')) {
            return false;
        } 
        // InputへCSS追加
        var el = component.find('input-answer');
        if (isCorrect) {
            $A.util.addClass(el.getElement(), 'correct');
        } else {
            $A.util.addClass(el.getElement(), 'incorrect');
        }
    },
})