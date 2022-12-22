public class OpportunityTriggerHelper {
    
    public void preventStageBack(Map<Id,Opportunity> oldmap,List<Opportunity> triggerNew){
        
         List<String> stageList= New List<String>{
        'Prospecting','Qualification','Needs Analysis','Value Proposition','Id. Decision Makers','Perception Analysis','Proposal/Price Quote','Negotiation/Review','Closed Won','Closed Lost'
    };
        
        
        for (Opportunity op:triggerNew){
            integer oldindex=stagelist.indexof(oldMap.get(op.id).stagename);
            integer newindex=stagelist.indexof(op.stagename);
            
            system.debug('Opportunity Stage Old value:'+OldMap.get(op.id).stageName);
            system.debug('Opportunity Stage Old Index:'+oldindex);
            
            system.debug('Opportunity Stage New value:'+op.stageName);
            system.debug('Opportunity Stage New Index:'+newindex);
            
            Profile p=[SELECT Id, Name FROM Profile where name='System Administrator' Limit 1];
            id loginuserid=system.userinfo.getProfileId();
            
            if(loginuserid==p.id){
               
            }
            else{
                 if(newindex<oldindex){
                 op.stageName.addError('You are not authorized to come back opportunity Stage');
            }
            
        }
        
        
        
    }

}
}