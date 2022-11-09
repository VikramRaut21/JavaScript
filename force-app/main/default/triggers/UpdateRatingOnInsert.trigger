trigger UpdateRatingOnInsert on Lead (before insert) {
    for(Lead l:Trigger.new){
        if(l.LeadSource == 'Web'){
            l.rating = 'Warm';         
        }
        else{
            l.rating = 'Hot';
        }
    }
}