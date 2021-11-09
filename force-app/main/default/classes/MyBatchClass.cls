global class MyBatchClass implements Database.Batchable<sObject> {
    global Database.QueryLocator start(Database.BatchableContext bc) {
        // collect the batches of records or objects to be passed to execute
        return Database.getQueryLocator([SELECT Id, Name from Account]);
    }
    global void execute(Database.BatchableContext bc, List<Account> records){
        // process each batch of records
        for (Account acc : records){
            acc.Name = 'Updated ' + acc.Name; 
        }
    }    
    global void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }    
}