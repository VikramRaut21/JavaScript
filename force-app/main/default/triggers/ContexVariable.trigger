trigger ContexVariable on Contact (After update) {
    
    
        for (Contact c : Trigger.new){
            
           c.Count_of_Update__c = c.Count_of_Update__c+1;
        }
                
            }