public class accUpdateHandler {
    public static void accUpdate(List<Account> acList,List<Contact> ccList){
        for(Contact c : ccList){
            if(c.AccountId != null){
                Account a = new Account();
                a.Id = c.AccountId;
                a.Acc1__c = c.ConB__c;
                acList.add(a);
            }
        }
        if(acList.size()>0){
            update acList;
        }
    }
        public static void conUpdate(List<Contact> ccList){
            for(Contact c : ccList){
                if(c.ConA__c != null){
                    c.ConB__c = c.ConA__c;
                }
            }
        }
    }