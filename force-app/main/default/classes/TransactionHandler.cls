public class TransactionHandler {
    
    public static void doHandlerException(System.Exception ex, String processName){
        
        Error_Log__c transactionlog = new Error_Log__c(Log_Details__c = ex.getStackTraceString() + 'Message :'+ ex.getMessage()+ex.getTypeName()+ex.getLineNumber(), 
                                                       Lod_DateTime__c = System.now() ,
                                                       Process_Name__c = processName);
        
        insert transactionlog;
        System.debug(transactionlog);
     
    }

}