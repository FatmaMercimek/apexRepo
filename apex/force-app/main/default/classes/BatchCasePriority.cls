/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 01-04-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 01-04-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class BatchCasePriority implements Database.Batchable<sObject> {

    // Implement the start method to specify the query to be used
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT Id, Priority FROM Case WHERE Priority = null');
    }

    // Implement the execute method to update the Priority field for each Case
    public void execute(Database.BatchableContext bc, List<Case> cases) {
        for (Case c : cases) {
            c.Priority = 'Low';
        }
        update cases;
    }

    // Implement the finish method to handle any post-processing
    public void finish(Database.BatchableContext bc) {
       system.debug('Batch Finished');
    }

}
