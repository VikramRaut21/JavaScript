trigger Prefix on consultant__c (before insert) {
    for(consultant__c con : Trigger.new){
        if(con.contry__c == 'India'){
            con.Name = 'Mr.' + con.Name;
        }
    }
}