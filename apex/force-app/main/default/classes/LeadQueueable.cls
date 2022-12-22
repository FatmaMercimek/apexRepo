public class LeadQueueable implements Queueable{ 
    
    private Lead singleLead;
    
    public LeadQueueable(Lead sLead){
        singleLead=sLead;
    }
    
    
    public void execute(QueueableContext context) {
        
    System.debug('Queueable Apex is working......'+ singleLead);
    }
}