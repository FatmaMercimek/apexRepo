/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 01-06-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@istest
public class AccountProcessorTest {
 @istest
    private static void countContactsTest(){
        list< Account> accounts= new list <account>();
        for (integer i=0;i<300;i++){
            account a= new account( name='Test'+i);
            accounts.add(a);
        }
        insert accounts;
        
        list <contact> conlist= new list<Contact>();
        list<Id> accountIds= new list<Id>();
        for(Account acc:accounts){
            conlist.add( new contact(FirstName=acc.Name, LastName='Test Contact', AccountId=acc.Id));
            accountIds.add(acc.Id);
            
        }
       insert conlist	; 
        
        Test.startTest();
        AccountProcessor.countContacts(accountIds);
        Test.stopTest();
         List<account> accs=[select id, number_of_contacts__c from account];
        for(account acc:accs){
            system.assertEquals(1, acc.number_of_contacts__c, 'Error');
        }
  
        
    }
}