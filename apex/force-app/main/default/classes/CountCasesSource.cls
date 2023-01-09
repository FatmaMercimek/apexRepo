/*Create a future method to count how many cases are created through Phone, Web,
Email. You need to put the counted value on account in 3 different fields. Ensure proper
code coverage as well.*/
public class CountCasesSource {

    public static void countCases(List<id> caseIds){
         list < Case> cases=[ select id from Case where id in: caseIds];
            integer totalNumberOfPhone=0;
            integer totalNumberOfWeb=0;
            integer totalNumberOfEmail=0;
         for(Case c:cases){
             if(c.Origin=='Phone'){
                totalNumberOfPhone=totalNumberOfPhone+1; 
             }
             else if(c.Origin=='Web'){
                totalNumberOfWeb=totalNumberOfWeb+1; 
             }
             else{totalNumberOfEmail=totalNumberOfEmail+1; }
        }
        system.debug('Total Number of Phone Origin:'+ totalNumberOfPhone);
        system.debug('Total Number of Web Origin:'+ totalNumberOfWeb);
        system.debug('Total Number of Email Origin:'+ totalNumberOfEmail);
    }
}




/*public class AccountProcessor {
 @future(callout=true)
    public static void countContacts(List<id> accountIds){
        list < account> accounts=[ select id, (select id from contacts) from account where id in: accountids];
        
        for(Account acc:accounts){
            acc.Number_of_contacts__c= acc.Contacts.size();
        }
        update accounts;
    }
}*/