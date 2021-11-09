@isTest
public class CreateContactWhenAccountCreatedTest {
    public static testMethod void ContactTestCase(){
        
        Account acc = new Account();
        acc.Name = 'Shyam';
        insert acc;
        
        Contact con = new Contact();
        con.AccountId = acc.Id;
        con.LastName = acc.Name;
        
        insert con;
        
    }
}