trigger UpdateShippingAddress on Account (before insert, before update) {

    for(Account a:trigger.new){
        
        if(a.BillingAddress != NULL && a.BillingCity != NULL && a.BillingCountry != NULL){
            a.ShippingCity = a.BillingCity;
            a.ShippingCountry = a.BillingCountry;
        }
    }
}