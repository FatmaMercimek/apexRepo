import { LightningElement } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
import conObject from '@salesforce/schema/Contact';
import conFirstName from '@salesforce/schema/Contact.FirstName';
import conLastName from '@salesforce/schema/Contact.LastName';
import conEmail from '@salesforce/schema/Contact.Email';
import conSurvey from '@salesforce/schema/Contact.Survey_Result__c';
import ConMobile from '@salesforce/schema/Contact.Phone';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class ContactForm extends LightningElement {
    firstName = '';
    lastName = '';
    mobile= '';
    emailId='';
    surveyVal='';
    contactChangeVal(event) {
        console.log(event.target.label);
        console.log(event.target.value);
        if(event.target.label=='First Name'){
            this.firstName = event.target.value;
        }
        if(event.target.label=='Last Name'){
            this.lastName = event.target.value;
        }
        if(event.target.label=='Mobile'){
            this.mobile = event.target.value;
        }
        if(event.target.label=='Email'){
            this.emailId = event.target.value;
        }
        if(event.target.label=='How do you think about Clarusway Salesforce Course?'){
            this.surveyVal= event.target.value;
        }
    }
    insertContactAction(){
        console.log(this.selectedAccountId);
        const fields = {};
        fields[conFirstName.fieldApiName] = this.firstName;
        fields[conLastName.fieldApiName] = this.lastName;
        fields[ConMobile.fieldApiName] = this.mobile;
        fields[conEmail.fieldApiName] = this.emailId;
        fields[conSurvey.fieldApiName] = this.surveyVal;
        const recordInput = { apiName: conObject.objectApiName, fields };
        createRecord(recordInput)
            .then(contactobj=>{
                this.contactId = contactobj.id;
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Success',
                        message: 'Survey record has been created',
                        variant: 'success',
                    }),
                );
            })
            .catch(error => {
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Error creating record',
                        message: error.body.message,
                        variant: 'error',
                    }),
                );
            });
    }
}