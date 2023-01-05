/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 01-04-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@istest


Public Class BatchCasePriorityTest {
@isTest
Private Static Void BatchCasePriorityTest1(){
        List <case> caselist= new list <case>();
        for( integer i=1; i<200; i++){
            Case c= new Case(Status='New',Origin='Phone', Description='4QTest'+i, Priority=null);
            caselist.add(c);
        }
    insert caselist;   

 	 Test.StartTest();
     BatchCasePriority casePriority= new BatchCasePriority();
     Database.executeBatch ( CasePriority);
     Test.stopTest();
     
     
	  Case updatecase= [select id, priority from case where  Id = :caselist];
      
    
       
        System.assertEquals('Low',updatecase.Priority, Message);
    }

}