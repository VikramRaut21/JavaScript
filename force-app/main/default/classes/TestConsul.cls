public class TestConsul {
    public static void UpdateConsultant(List<consultant__c> ListConsultant){
        for(consultant__c c : ListConsultant){
            if(c.Contry__c == 'India'){
                c.Type__c = 'Vendor';
            }
        }
    }
}