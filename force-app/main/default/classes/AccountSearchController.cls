public with sharing class AccountSearchController {
    @AuraEnabled(Cacheable = true)
    public static List<Account> retriveProducts(String strProdName) {
        strProdName = '%' + strProdName + '%';
        List<Account> lstProd = [SELECT  Id, Name, Phone FROM Account WHERE Name LIKE :strProdName];
        return lstProd; 
    }
}