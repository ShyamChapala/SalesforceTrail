({
    saveRecord : function(component, event, helper) {

        var action = component.get("c.insertAccount");
        action.setParams({
            name : component.get("v.firstName")
        });
        action.setCallback(this, function(response){

            var state = response.getState();

            if(state === "SUCCESS"){
                alert('Record Inserted Sucessfully'+response.getReturnValue());
                component.set("v.firstName","")
            }

        });

        $A.enqueueAction(action);

    }
})