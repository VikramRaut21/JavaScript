trigger NewCase on Contact (before insert) {
    List<Case> newCase = new List<Case> ();
    for(Contact c : Trigger.new){
        if(c.Salutation == 'Dr.'){
            Case cs= new Case();
            cs.Type = 'Other';
            cs.Status = 'New';
            cs.Origin = 'Phone';
            newCase.add(cs);  
        }
        insert newCase;
    }

}