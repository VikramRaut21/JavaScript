trigger LeadTrigger on Lead (before insert,before update,after insert,after update) {
    LeadHandler.checkLeadData(Trigger.isBefore,Trigger.isInsert,Trigger.new);
        
    

}