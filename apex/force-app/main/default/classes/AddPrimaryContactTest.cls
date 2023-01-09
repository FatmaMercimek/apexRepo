@istest
public class AddPrimaryContactTest{
    
@istest
    private static void testQueueableClass(){
    List<Account> accounts= new list <account>();
    for (integer i=0; i<500;i++){
        Account acc=new Account(Name= 'Test Account');
        if (i<250){
            acc.BillingState='NY';
        } else {
            acc.Billingstate='CA';
        }
        accounts.add(acc);}
        insert accounts;
        
        Contact contact=new Contact(Firstname='Simon', LastName='Connock');
        insert contact;
        
        
        Test.startTest();
        Id jobId = system.enqueueJob(new AddPrimaryContact(contact,'CA'));
        Test.stopTest();
        
        List<Contact> contacts=[Select id FROM Contact Where Contact.Account.BillingState='CA'];
        system.assertEquals(200, contacts.size(), 'Error:Incorrect number of Contact records found');
    }
}