/*Create an Apex class that implements the Database.Batchable interface to update all Lead 
records in the org with a specific LeadSource.*/
public without sharing class LeadProcessor implements Database.Batchable<sObject>{
    // instance member to retain state across transactions
  
    public Database.QueryLocator start(Database.BatchableContext dbc) {
        return Database.getQueryLocator( [SELECT Id, Name FROM Lead] );
    }
    public void execute(Database.BatchableContext dbc, List<Lead> leads){
        // process each batch of records
        for (Lead ld : leads) {
           ld.LeadSource='Dreamforce';
        }
        update leads;
    }
    public void finish(Database.BatchableContext dbc){
        System.debug('Done');
       
    }
}