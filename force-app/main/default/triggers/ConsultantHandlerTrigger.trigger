trigger ConsultantHandlerTrigger on consultant__c (before insert,before update) {
    TestConsul.UpdateConsultant(Trigger.new);

}