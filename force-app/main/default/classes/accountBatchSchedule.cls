global class accountBatchSchedule implements Schedulable{
    global void execute(SchedulableContext sc) {
        //invoke the batch class
        Database.executeBatch(new MyBatchClass());
    }
}