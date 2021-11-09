({
	doInit : function(component, event, helper) {

        var action = component.get("c.getperformcallout");
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
               component.set("v.response", response.getReturnValue());
               //alert(response.getReturnValue());
            }
            else {
                console.log("Failed with state: " + state);
                alert(state);
            }
        });
        $A.enqueueAction(action);
    },
})