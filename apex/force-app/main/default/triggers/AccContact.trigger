/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 01-11-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger AccContact on Account (before insert, after insert) {

    if(Trigger.isInsert){
        if(Trigger.isAfter){
            AccountTriggerHelper.afterInsert(Trigger.New);
        } 
    }


}