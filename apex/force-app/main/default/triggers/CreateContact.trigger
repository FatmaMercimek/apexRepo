/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger CreateContact on Candidate__c (after insert){
    /* Invoke thecreateContact method with a list of Candidates as the argument
    to create a corresponding Contact from each new Candidate Record */
    CreateContactFromCan.createContact(Trigger.new);
}