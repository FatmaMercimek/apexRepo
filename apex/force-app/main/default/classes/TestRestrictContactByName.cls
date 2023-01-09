@istest
private class TestRestrictContactByName {
    
    @istest static void testinvalidContactLastName(){
        Contact cont= new Contact ( firstname= 'Sarah', Lastname= 'INVALIDNAME' );
        insert cont;
    
 		Test.startTest();
        Database.SaveResult result = Database.insert(cont, false);
        Test.stopTest();
        system.assert(!result.isSuccess());
        
    }
  

}