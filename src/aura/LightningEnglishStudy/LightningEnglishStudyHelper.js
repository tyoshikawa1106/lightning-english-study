({
    getEnglishTableListByApex : function(component) {
        var recordId = component.get("v.recordId");
        var action = component.get("c.getEnglishTableList");
        action.setParams({
            "recordId": recordId
        });
        action.setCallback(this, function(data) {
            component.set("v.englishTableList", data.getReturnValue());
        });
        $A.enqueueAction(action);
      }
})