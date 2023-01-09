@istest
public class LeadProcessorTest {
 @istest
    private static void testBatchClass() {
        List<Lead> leads = new List<Lead>();
        
        for (Integer i=0;i<200;i++) {
            Leads.add(new Lead (LastName='Lead '+i,
                Company='Clarusway'));
        }
        insert leads;
        
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp,200);
        Test.stopTest();
        // after the testing stops, assert records were updated properly
        List<Lead> updatedLeads=[SELECT ID FROM Lead WHERE LeadSource='DreamForce' ];
        System.assertEquals(200, updatedleads.size(), 'Error. at least one record not updated correctly');
    }
}