trigger updateCon on Contact (before insert,after insert,before update,after update) {
    if(Trigger.isInsert){
        List<Account> actList = new List<Account>();
        for(Contact c: Trigger.new){
            if(c.AccountId != null){
                Account act = new Account();
                act.Id = c.AccountId;
                act.Acc1__c = c.ConB__c;
                actList.add(act);
            }
        }
        if(actList.size()>0){
            update actList;
        }    
    }
    if(Trigger.isBefore){
        for(Contact c : Trigger.new){
            if(c.ConA__c != null){
               c.ConB__c = c.ConA__c;
            }
        }     
    }
}