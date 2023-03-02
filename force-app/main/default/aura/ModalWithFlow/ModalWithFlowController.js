({
    openModel: function(component, event, helper) {
       // Set isModalOpen true
       component.set("v.isModalOpen", true);
    },
    
    closeModel: function(component, event, helper) {
       // Set isModalOpen false
       component.set("v.isModalOpen", false);
    },
    
    saveDetails: function(component, event, helper) {
     //do something 
       component.set("v.isModalOpen", false);
    },
 })