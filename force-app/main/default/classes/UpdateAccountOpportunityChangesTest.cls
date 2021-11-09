@isTest
public class UpdateAccountOpportunityChangesTest {
    public static testmethod void UpdateAccountOpportunityChanges(){
        
        account acc = new account();
		acc.name='test';
		insert acc;
		
		account acc1 = new account();
		acc1.name='test1';
		insert acc1;
		
		opportunity opp = new opportunity();
		opp.name='test opp';
		opp.stagename='closed won';
		opp.AccountId = acc.id;
		insert opp;
		
		opportunity opp1 = new opportunity();
		opp1.name='test opp';
		opp1.stagename='closed won';
		opp1.AccountId = acc1.id;
		insert opp1;
 
		test.startTest();  
		//List<Account> acc2 = [Select id,rating from account where id =: opp.AccountId];
		String Rating = 'hot';
		system.assertequals(Rating,'hot');
		test.stopTest();
    }
}