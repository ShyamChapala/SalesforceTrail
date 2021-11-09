({
    calloutCtrl : function(component, event, helper) {
       // create a server side action.       
        var action = component.get("c.getSampleData");
        // set the url parameter for getCalloutResponseContents method (to use as endPoint)
     
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {
                // set the response to response attribute.      
               component.set("v.response", response.getReturnValue());
                component.set("v.isDataAvailable", "true");
                
            }
        });
 
        $A.enqueueAction(action);
    },
})