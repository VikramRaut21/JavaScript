trigger OpportunitytTest on Opportunity (before update) {
    if (Trigger.isBefore && Trigger.isUpdate){
        System.debug(Trigger.oldMap);
    }

}