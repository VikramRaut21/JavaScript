trigger OnCaseCreation on Case (before insert) {
    for(Case c:Trigger.new){
        if(c.Origin=='Phone'){
            c.OwnerId = [SELECT Id ,Name, Type, Email FROM Group Where Type ='Queue' And Name ='Service Agent Pune'].id;
            c.Expected_Closed_Date__c = date.today()+2;
            
        }
    }

}