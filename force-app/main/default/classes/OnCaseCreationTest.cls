@isTest
public class OnCaseCreationTest {
    
    public static testMethod void onCreation(){
        
        Case c = new Case();
        c.Origin = 'Email';
        System.assertEquals(c.Origin.ContainsIgnoreCase('Email'),true);
        c.Status = 'New';
        c.Priority='Normal';
        //if (c.Origin == 'Email'){
        
        // }
        
    }
}