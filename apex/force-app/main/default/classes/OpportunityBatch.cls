public class OpportunityBatch implements Database.Batchable<SObject> {

    
    //start; 50m data scope (small Batch)
    public Database.QueryLocator start(database.BatchableContext Bc){
        return Database.getQueryLocator('Select Id From opportunity');
    }
    
    //execute: small batch (scope) process>new small scope batch
    public void execute(database.BatchableContext Bc, list<Opportunity> scope){
        system.debug('Scope size: '+scope.size());
        for (opportunity s:scope){}
    }
    //finish; 50m finish data
    public void finish(database.BatchableContext Bc){
        system.debug('Batch Apex opportunity finished');
    }
}