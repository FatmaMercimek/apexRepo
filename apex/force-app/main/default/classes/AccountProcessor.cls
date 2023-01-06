/*Create an Apex class with a future method that accepts a List of Account IDs and updates a custom field on 
the Account object with the number of contacts associated to the Account. Write unit tests that achieve 100% 
code coverage for the class. Every hands-on challenge in this module asks you to create a test class.*/
public class AccountProcessor {
 @future(callout=true)
    public static void countContacts(List<id> accountIds){
        list < account> accounts=[ select id, (select id from contacts) from account where id in: accountids];
        
        for(Account acc:accounts){
            acc.Number_of_contacts__c= acc.Contacts.size();
        }
        update accounts;
    }
}