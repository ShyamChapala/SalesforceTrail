({
	doInit : function(component, event, helper) {
        var action = component.get("c.fetchAccts");
        component.set('v.mycolumns', [
            {label: 'Account Name', fieldName: 'Name', type: 'text', sortable: true},
            {label: 'Industry', fieldName: 'Industry', type: 'text',sortable: true},
            {label: 'ID', fieldName: 'Id', type: 'Id',sortable: true}
        ]);
      action.setCallback(this,function(response){
            var state=response.getState();
            if(state==="SUCCESS")
            {
                alert(JSON.stringify(response));
              console.log('apex response :'+JSON.stringify(response));
              component.set("v.accountList",response);
            }
           
        });
        $A.enqueueAction(action);
	}
})