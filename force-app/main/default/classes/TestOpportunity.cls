public class TestOpportunity {
    public static void UpdateSource(List<Opportunity> oppList){
        for(Opportunity opp : oppList){
            if(opp.Type == 'New Customer'){
                opp.LeadSource = 'Web';
            }
            
        }
    }
}