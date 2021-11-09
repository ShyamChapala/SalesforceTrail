// Update Account Rating to ‘Hot ‘on account when opportunity stage equals ‘closed one’

trigger UpdateAccountOpportunityChanges on Opportunity (after insert, after update) {
    
    List<Account> lstAcc = new List<Account>();
    Set<id> Accountids = new set<id>();

    for (Opportunity opty : trigger.new){
        if(opty.StageName == 'Closed Won'){
            Accountids.add(opty.AccountId);
        }
    }
   List<Account> a  = [Select id,Rating from Account where Id IN: AccountIds];
    if(a != null){
        for(Account acc: a)
       {
          acc.Rating ='Hot';
          lstAcc.add(acc);
       }
    }
          update lstAcc;
}