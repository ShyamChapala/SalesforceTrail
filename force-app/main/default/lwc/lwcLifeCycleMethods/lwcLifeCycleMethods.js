import { LightningElement, track } from 'lwc';

export default class LwcLifeCycleMethods extends LightningElement {


    @track inputValue;

    constructor(){
        super();
            console.log('constructor() called...');
    }

    connectedCallback(){
        console.log('connectedCallback() called...');
    }

    renderedCallback(){
        console.log(' renderedCallback() called...');
    }

    disconnectedCallback(){
        console.log(' disconnectedCallback() called...');
    }

    errorCallback(){
        console.log('errorCallback() called...');
    }

    handleChange(event){
        this.inputValue = event.target.value;
    }
}