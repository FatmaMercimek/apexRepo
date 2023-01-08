trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
   List<Task> taskList = new List<task>();
    for (opportunity oppObj : trigger.new){
        if(oppObj.stageName == 'Closed Won'){
            Task taskObj = new Task();
            taskObj.Subject = 'Follow Up Test Task';
            taskObj.WhatId = oppObj.Id;
            taskList.add(taskObj);
            
        }
    }
  insert tasklist;
}