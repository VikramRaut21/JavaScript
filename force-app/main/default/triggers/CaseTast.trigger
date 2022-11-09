trigger CaseTast on Case (before insert) {
    for(Case c : Trigger.new){
        if(c.Origin == 'Email'){
            c.Type = 'Other';
            c.Priority= 'High';
        }
    }

}