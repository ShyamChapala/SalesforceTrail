@isTest
public class AddPrefixToLeadTest {
    public static testMethod void AddPrefixText(){
        
        Lead l = new Lead();
        l.FirstName = 'Dr'+l.FirstName;
        insert l;
    }
}