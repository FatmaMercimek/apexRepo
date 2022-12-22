public class LeadFuture {
    @future
    public static void toUpperName(Set<Id> multiId){
        
        List<Lead> multiLead=[SELECT Id, firstName, Lastname FROM Lead where id=:multiId];
            
        for (Lead singleLead:multilead){
            singleLead.Lastname = singleLead.lastname.toUppercase();
            
           
        }
        update multilead;
        
    }

}