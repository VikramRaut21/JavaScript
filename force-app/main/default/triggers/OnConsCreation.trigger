trigger OnConsCreation on consultant__c (before insert) {
    String QueueId=[SELECT Id ,Name, Type, Email FROM Group Where Type ='Queue' And Name ='Service Agent Pune'].id;
     For(Consultant__c c :Trigger.new){
        if(c.Type__c=='Employee' && c.Salary__c>=10000){
            c.OwnerId=QueueId;
            c.Date_of_joining__c = date.today()+10;
            
        }
    }

}