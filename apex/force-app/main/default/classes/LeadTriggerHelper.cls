public class LeadTriggerHelper {

    // List Collection 
    public void checkField(List<Lead> leadList){    // trigger.new
      
        List<Lead> LeadListNoData = New List<Lead>();
        
        for(Lead singleLead:leadList){
           
            if(String.isBlank(singleLead.phone)){
                LeadListNoData.add(singleLead);
            }
           
        }
        
      assignTask(LeadListNoData);  
        
    }
    
    
    public void assignTask(List<Lead> LeadListNoData){
        
        List<Task> multiTask = New List<Task>();
        
        for(Lead singleLead:LeadListNoData){
            Task singleTask = New Task();
            singleTask.Subject = 'Phone Number Must be Filled';
            singleTask.ActivityDate=Date.today()+5;
            singleTask.WhoId= singleLead.id; // Lookup Contact, Lead
            singleTask.OwnerId= singleLead.OwnerId;  // Lookup(User,Calendar,Group)
            singleTask.Status='Not Started'; // Not Started,In Progress,Completed,Waiting on someone else,Deferred
			// additionally add to Notification 
            singleTask.IsReminderSet=true;
            singleTask.ReminderDateTime=Datetime.now();

            multiTask.add(singleTask);
        }
        
        insert multiTask;
    }
    
}