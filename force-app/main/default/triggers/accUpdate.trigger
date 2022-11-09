trigger accUpdate on Contact (before insert,after insert) {
    if(Trigger.isBefore){
        accUpdateHandler.conUpdate(Trigger.new);      
    }
}