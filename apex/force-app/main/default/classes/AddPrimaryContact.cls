//Create a Queueable Apex class that inserts the same Contact for each Account for a specific state.
public without sharing class AddPrimaryContact implements Queueable {
    private Contact contact;
    private string state;
    
    public AddPrimaryContact(Contact inputContact, string inputstate){
        this.contact=inputContact;
        this.state=inputState;
        
    }
    public void execute(QueueableContext contex ){
        
        List<Account> accounts=[SELECT Id From Account WHERE BillingState=:state LIMIT 200];
        List <Contact> contacts= new list<Contact>();
        
        for(Account acc: accounts){
            contact contactclone=contact.clone();
            contactClone.AccountId = acc.id;
            contacts.add(contactClone);
        }
        insert contacts;
    }

}