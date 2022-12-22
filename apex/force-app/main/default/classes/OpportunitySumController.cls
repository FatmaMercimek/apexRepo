public class OpportunitySumController {
    
    Public Id accid {get;set;}
    Public String msg {get;set;} 
    public list<Opportunity> multiOpp {get;set;}
    public decimal totalAmount {get;set;}
    
    public OpportunitySumController(ApexPages.StandardController controller){
        
        accid=ApexPages.currentPage().getParameters().get('id');
        msg=ApexPages.currentPage().getParameters().get('msg');
        multiOpp=[SELECT id,Name,accountid,amount FROM Opportunity WHERE accountid=:accid];
              totalAmount=0;
        for (Opportunity singleOp:multiOpp){
            totalAmount+=singleOp.amount;
        }
        
        
    }
    

}