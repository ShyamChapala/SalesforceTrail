trigger leadMainTrigger on Lead (before insert) {
    
    validateLeadData obj=new validateLeadData();  // Declaring the instance of class.
    if(trigger.isbefore && trigger.isinsert) // Using context variables.
    {
        obj.method1(trigger.new); // Calling apex class method using instance of class.
    }
    
}