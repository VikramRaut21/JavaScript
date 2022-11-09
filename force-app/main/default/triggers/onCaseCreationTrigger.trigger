trigger onCaseCreationTrigger on Contact (after insert) {
    onCaseCreationHandler.NewCon(Trigger.new);

}