public class onCaseCreationHandler {
    public static void NewCon(List<Contact> newList){
        List<Case> newCase = new List<Case>();
        for(Contact c : newList){
            if(c.Salutation =='Dr.'){
                Case Cs = new Case();
                Cs.Type = 'Other';
                Cs.Reason = 'Performance';
                Cs.Status = 'New';
                Cs.Origin = 'Phone';
                cs.ContactId = c.Id;
                newCase.add(Cs);    
         }
            if(!newCase.isEmpty()){
                insert newCase; 
            }
           
      }
   }
}