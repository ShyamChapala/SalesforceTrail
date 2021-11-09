global class MySchduleClass implements Schedulable{
    
    global void execute(SchedulableContext ctx){
        Database.executeBatch(new MyBatch1());
    }

}