public class GetRestServiceData {
    @AuraEnabled 
    public static List<GetRestServiceData.ResponseWrapper> result {get; set;}
    
    @AuraEnabled
    public static List<GetRestServiceData.ResponseWrapper> getSampleData(){
        
        result = new List<GetRestServiceData.ResponseWrapper>();     
        
        // Req and Response object preparation
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        HttpResponse res = new HttpResponse();
        
        String END_POINT_URL = 'https://gorest.co.in/public/v1/users';
        
        // Request Object Preparation
        req.setEndpoint(END_POINT_URL);
        req.setMethod('GET');
        
        // Send Request
        res = http.send(req);
        
        System.debug(res.getBody());
        
        Map<String, Object> valuesMap = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());        
        System.debug('Response Data'+valuesMap.get('data'));
        String jsonData = JSON.serialize(valuesMap.get('data'));
        result = (List<GetRestServiceData.ResponseWrapper>)JSON.deserialize(jsonData, List<GetRestServiceData.ResponseWrapper>.class);
        System.debug('result'+result);
        System.debug('Response Returned...');
        return result;
    }
    
    public class ResponseWrapper{
        
         @AuraEnabled public Integer id {get; set;}
         @AuraEnabled public String name {get; set;}
         @AuraEnabled public String email {get; set;}
         @AuraEnabled public String gender {get; set;}
         @AuraEnabled public String status {get; set;}
        
    }
    
}