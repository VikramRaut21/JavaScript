trigger CollectionTest on Account (after delete) {
    For(Account a : Trigger.old){
        if(a.Name != 'Vikram'){
           a.Name.addError('Not Accepted');
            System.debug('Error');
            
        }
        
    }

}