global class MyBatch1 implements Database.Batchable<sObject>{
    
    global Database.QueryLocator start(Database.BatchableContext ctx){
        return Database.getQueryLocator('SELECT id from Account WHERE CreatedDate = LAST_N_DAYS:5');
    }
    
    global void execute(Database.BatchableContext ctx, List<Account> acc){
        if (acc.size() > 0 ){
            Database.delete(acc);
        }
    }
    
    global void finish(Database.BatchableContext ctx){
        
        Database.executeBatch(new MyBatchClass());
        
    }

}