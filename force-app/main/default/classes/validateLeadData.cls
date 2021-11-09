public class validateLeadData {
    public void method1(List<Lead> leadList){ //Getting lead records list from trigger.new.
        System.debug('trigger.new'+leadList);
        for(Lead obj:leadList){ // Iterating over lead list.
            if(obj.status=='Closed - Converted'){ // checking the status.
                obj.addError('Lead cannot be created in "Closed - Converted" status. Please select other status'); // Throw error if condition is satisfied.
            } 
        }
    }
}