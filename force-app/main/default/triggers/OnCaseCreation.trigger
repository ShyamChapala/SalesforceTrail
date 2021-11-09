//Whenever case is created with origin as email then set status as new and priority as Normal
trigger OnCaseCreation on Case (before insert) {
    
    for(Case c:trigger.new){
        
        if(c.Origin == 'Email'){
            c.Status = 'New';
            c.Priority = 'Normal';
        }
    }

}