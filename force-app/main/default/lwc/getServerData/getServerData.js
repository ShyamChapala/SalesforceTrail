import { LightningElement, wire, track} from 'lwc';
import getAccounts from '@salesforce/apex/getRecordDataController.getAccounts';

export default class GetDataDisplayData extends LightningElement {
    @track columns = [
        { label: 'Id', fieldName: 'Id'},
        { label: 'Name', fieldName: 'Name' },

    ];
    @track accountList;
        // Method 1
    //@wire(getAccounts) wiredAccounts;

        //Method 2
     @wire (getAccounts) wiredAccounts({data,error}){
        if (data) {
             this.accountList = data;
        console.log(data); 
        } else if (error) {
        console.log(error);
        }
   }
}