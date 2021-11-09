//2. Prefix first name with Dr when new Lead is created or updated
trigger AddPrefixToLead on Lead (before insert, before update) {

    for (Lead ld : trigger.new){
        ld.FirstName = 'Dr'+ ld.FirstName;
    }
}