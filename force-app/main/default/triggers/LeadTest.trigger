trigger LeadTest on Lead (before insert,before update) {
    for(Lead lead1 : Trigger.new){
        if(String.isBlank(lead1.Title)){
            lead1.Title ='IMP';   
        }
        if(String.isBlank(lead1.Email)){
            lead1.addError('Please Update the Email');
        }
        
    }
    
    
}