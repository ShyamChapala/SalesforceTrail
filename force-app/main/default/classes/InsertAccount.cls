public class InsertAccount {

    @AuraEnabled
    public static Id insertAccount(String name){
        try {
            Account acc = new Account(Name = name);
            insert acc;
            return acc.Id;
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    
}