@isTest
public class PrefixDoctorTest {
    Public static testMethod void PreDoctor(){
        Lead l=new Lead();
        l.FirstName='Dr Swati';
        l.company='sfdcAmplified';
        l.Status='Open - Not Contacted';
        insert l;
        Lead le = [Select id,FirstName from Lead where company='sfdcAmplified'];
        System.assertEquals(le.FirstName.ContainsIgnoreCase('Dr'), true);
       
    }
}