({
	handleClick : function(component, event, helper) {
		alert('start');
         var action=component.get('c.getSampleData');
       	 alert('Stopped');
        action.setCallback(this,function(response){
            var state=response.getState();
            var response1=response.getReturnValue();
            if(state==="SUCCESS")
            {
              //  component.set("v.accountList",response1);
              alert(response.getReturnValue());
            }
           
        });
        $A.enqueueAction(action);
        
        
	}
})