trigger UpdateContactAddress on Account (before insert) {
  /*  
    list<Contact> conList = new list<Contact>();
    Map<id,Account> AccountMap = new Map<id,Account>();
    for(Account newAccount : Trigger.new)
    {
        if( (newAccount.billingstreet!= Trigger.oldmap.get(newAccount.id).billingstreet) || (newAccount.billingstate!= Trigger.oldmap.get(newAccount.id).billingstate) || (newAccount.billingcity!= Trigger.oldmap.get(newAccount.id).billingcity) || (newAccount.billingpostalcode != Trigger.oldmap.get(newAccount.id).billingpostalcode) || (newAccount.billingcountry != Trigger.oldmap.get(newAccount.id).billingcountry))
        {
            AccountMap.put(newAccount.id,newAccount);
            System.debug('old billing address'+ Trigger.oldmap.get(newAccount.id).billingstreet);
        }
    }
    
    for(Contact Updatecontact : [SELECT id,Accountid,MailingAddress FROM Contact where Accountid in:AccountMap.Keyset()])
    {
        Updatecontact.Mailingstreet = AccountMap.get(Updatecontact.Accountid).billingstreet;
        Updatecontact.Mailingcity  = AccountMap.get(Updatecontact.Accountid).billingcity;
        Updatecontact.Mailingpostalcode = AccountMap.get(Updatecontact.Accountid).billingpostalcode;
        Updatecontact.Mailingstate = AccountMap.get(Updatecontact.Accountid).billingstate;
        Updatecontact.Mailingcountry  = AccountMap.get(Updatecontact.Accountid).billingcountry;
        conList.add(Updatecontact);
    }
    update conList;*/
}