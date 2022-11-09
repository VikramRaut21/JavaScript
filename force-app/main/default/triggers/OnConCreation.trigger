trigger OnConCreation on consultant__c (before insert,before update) {
   String QueueId = [SELECT Id ,Name, Type, Email FROM Group Where Type ='Queue' And Name ='Service Agent Pune'].id;
    For(Consultant__c c :Trigger.new){
        if(c.Type__c=='Vendor'){
            c.OwnerId= QueueId;
            c.Date_of_joining__c = date.today()+2;
            
        }
    }
    

}