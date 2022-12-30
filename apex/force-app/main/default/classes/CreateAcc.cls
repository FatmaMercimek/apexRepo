/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-29-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class createAcc {
    public createAcc() {

    }


    public void create(String accName) {
        
            Account singleAccount = New Account();
            singleAccount.Name=accName;

            insert singleAccount;
        
    }
    
     public void create(List<String> accNames) {
       
         List<Account> multiAcc = New List<Account>();
         
         
         for(String accName:accNames){
         
             Account singleAcc = New Account();
             singleAcc.name=accName;
             multiAcc.add(singleAcc);
             
           //  System.debug(singleAcc);
             
         }
         
         insert multiAcc;
         
      
        
    }
    
    
    
    public void create (String accName, List<Contact> multiContacts){
        
          Account singleAccount = New Account();
          singleAccount.Name=accName;

          insert singleAccount;   // singleAccount.id;
        
        List<Contact> newMultiContact = New List<Contact>();
        
        
        for (Contact singleContact:multiContacts){
            
            System.debug('Check Contact : '+singleContact);
            
            if(String.isBlank(singleContact.id)){
                // create contact......
               
             // add to the list
             // 
            	singleContact.AccountId=singleAccount.id;  // lookup
                
             
                    if(String.isBlank(singleContact.LastName)){
                        system.debug('Required field is missing : '+singleContact);
                    } else {
                         newMultiContact.add(singleContact);
                    }
               
                
                
            } else {
                // update contact .....
                singleContact.AccountId=singleAccount.id;  // lookup
                
                 newMultiContact.add(singleContact);
           
            }
            
        }
        
        
        upsert newMultiContact;
         	
        
        
        
        
    }  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}   // end of Class
