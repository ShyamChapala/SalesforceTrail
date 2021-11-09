public class GetDataFromWebService {
	@AuraEnabled
    public static List<ResponseWrapper> resWrapper {get;set;}
    @AuraEnabled
    public static List<ResponseWrapper> getperformcallout(){
        
        resWrapper = new List<ResponseWrapper>();
        
        HttpRequest req = new HttpRequest();
        HttpResponse res = new HttpResponse();
        
        
        Http http = new Http();
        String endPointUrl = 'https://reqres.in/api/user?page=2';
        req.setEndpoint(endPointUrl);
        req.setMethod('GET');
        res = http.send(req);
        String jsonInput = res.getBody();
        
        
        Map<String, Object> valuesMap = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());        
        System.debug('Response Data'+valuesMap.get('data'));
        String jsonData = JSON.serialize(valuesMap.get('data'));
        resWrapper = (List<ResponseWrapper>)JSON.deserialize(jsonData, List<ResponseWrapper>.class);
        System.debug('result'+resWrapper);
        System.debug('Response Returned...');
        
       return resWrapper;

    }
    
}