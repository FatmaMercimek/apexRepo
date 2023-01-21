/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 01-11-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
Public class AccountTriggerHelper {
    public static void afterInsert(List<Account> newList){
        List<Contact> conList= new List <Contact>(Trigger.new);
        for(Account acc:newList){
            Contact c = new Contact();
            c.lastname= 'Test';
            c.firstname= 'Contact with Account';
            c.accountId=acc.id;
            conlist.add(con);
           
             
        }
        insert c;
    }
}