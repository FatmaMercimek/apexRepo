@istest
public class BusinessToCustommerTest{
   		 @istest 
        public static void create2paramstest1(){
        BusinessToCustommer b2c=New BusinessToCustommer();
        
        b2c.create('Fatma Kaya Mercimek');
            
        Account testacc=[Select id,Name From Account];
        Contact testcon=[select id,name, accountId from contact];
            
        system.assertEquals('Fatma Kaya Mercimek', testacc.name);
        system.assertEquals('Fatma Kaya Mercimek', testcon.name);
        system.assertEquals(testacc.id, testcon.accountid);
        
        
    }
}