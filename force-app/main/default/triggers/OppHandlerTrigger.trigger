trigger OppHandlerTrigger on Opportunity (before insert,before update) {
	TestOpportunity.UpdateSource(Trigger.new);
}