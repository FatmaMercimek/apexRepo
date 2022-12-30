/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-29-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class testCreateAcc {

    @isTest
    public static void createTest1(){
        createAcc acc = New createAcc();

		acc.create('Test Class TEST 1');
      
              
        Test.startTest(); // new governor limit Begin   
        Account testAcc=[SELECT id,Name FROM Account];
        Test.stopTest(); // new governor limit END   
        
       
        
       //  System.debug(testAcc);
        
        
       System.assertEquals('Test Class TEST 1',testAcc.Name , 'Create Method Failed...');
       
    }
    
    @isTest
    public static void createTest2(){
        
        // Create JOB...
        createAcc acc = New createAcc();
        List<String> NameList = New List<String>();
      
        for(Integer i=1;i<=100;i++){
            NameList.add('TEST CLASS METHOD 2 Acc NO : '+i);
        }
        
        Test.startTest();
        acc.create(NameList);
        
        // Evaluate JOB.
        
        
        List<Account> multiTestAcc = [SELECT id,Name FROM Account];
        Test.stopTest();
        Integer result = multiTestAcc.size();
        
        System.assertEquals(100, result, 'Create List Method Failed.');
        
    }
    
    
    @isTest
    public static void createTest3(){
            // Create JOB...
        createAcc acc = New createAcc();
        List<String> NameList = New List<String>();
      
        for(Integer i=1;i<=100;i++){
            NameList.add('TEST CLASS METHOD 2 Acc NO : '+i);
        }
        
        Test.startTest();
        acc.create(NameList);
        
        // Evaluate JOB.
        
        
        List<Account> multiTestAcc = [SELECT id,Name FROM Account];
        Test.stopTest();
        Integer j=0;
        for (Account singleTestAcc:multiTestAcc){
             j++;
            System.assertEquals('TEST CLASS METHOD 2 Acc NO : '+j, singleTestAcc.Name, 'Create List Method Failed.');
           
        }
       
        
       
    }
    
   @isTest
    public static void createTest4(){
        
        // Prepare for Test 
         createAcc acc = New createAcc();
        
        List<Contact> testContacts = New List<Contact>();
        
       
        
        for (Integer i=1;i<=100;i++){
            
            Contact sTestContact = New Contact();
             sTestContact.firstName='Class ' + i;
            sTestContact.LastName='Test Method ' + i;
            
            
            
             testContacts.add(sTestContact);
        }
        
        Test.startTest();
        
        insert testContacts;
       
        
        
        acc.create('Test Account',testContacts);
        
        // Run TEST
       
        
		Account newAccount = [SELECT id,Name FROM Account];
        
        List<Contact> newMultiContact = [SELECT id, firstName,LastName,Accountid FROM Contact];
        

        for(Contact newContact:newMultiContact){
            
            System.assertEquals(newContact.Accountid, newAccount.id, 'Method Failed.');
           
        }        
       
        

		        
        
        Test.stopTest();
    }
    
    
      @isTest
    public static void createTest5(){
        
        // Prepare for Test 
         createAcc acc = New createAcc();
        
        List<Contact> testContacts = New List<Contact>();
        
       
        
        for (Integer i=1;i<=100;i++){
            
            Contact sTestContact = New Contact();
             sTestContact.firstName='Class ' + i;
            sTestContact.LastName='Test Method ' + i;
            
            
            
             testContacts.add(sTestContact);
        }
        
        Test.startTest();
        
       
        acc.create('Test Account',testContacts);
        
        // Run TEST
       
        
		Account newAccount = [SELECT id,Name FROM Account];
        
        List<Contact> newMultiContact = [SELECT id, firstName,LastName,Accountid FROM Contact];
        

        for(Contact newContact:newMultiContact){
            
            System.assertEquals(newContact.Accountid, newAccount.id, 'Method Failed.');
           
        }        
       
        

		        
        
        Test.stopTest();
    }
    
    
    
    
    
    
    
    
    
    
    
    
}  // end of class