({
    sum : function(component, event, helper) {
        
        var num1=component.get("v.numx");
        var num2=component.get("v.numy");
        
        console.log(num1);
        console.log(num2);
        
        component.set("v.result", parseFloat(num1)+parseFloat(num2));
        
    },
      sub : function(component, event, helper) {
        
        var num1=component.get("v.numx");
        var num2=component.get("v.numy");
        
        console.log(num1);
        console.log(num2);
        
        component.set("v.result", parseFloat(num1)-parseFloat(num2));
        
    },
      mul : function(component, event, helper) {
        
        var num1=component.get("v.numx");
        var num2=component.get("v.numy");
        
        console.log(num1);
        console.log(num2);
        
        component.set("v.result", parseFloat(num1)*parseFloat(num2));
        
    },
      div: function(component, event, helper) {
        
        var num1=component.get("v.numx");
        var num2=component.get("v.numy");
        
        console.log(num1);
        console.log(num2);
        
        component.set("v.result", parseFloat(num1)/parseFloat(num2));
        
    }
   
    
})