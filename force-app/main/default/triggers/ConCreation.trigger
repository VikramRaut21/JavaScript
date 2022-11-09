trigger ConCreation on Account (after insert) {
List<contact> cons = new List<contact>();
    for(Account acc : Trigger.new){
        contact c = new Contact();
        c.AccountId = acc.id;
        c.LastName  = acc.Name;
        c.Salutation = "Mr";
        cons.add(c)
    }
    insert cons;
}