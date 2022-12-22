public class Calculate {
    public integer sum(integer x, integer y){
        return x+y;
    }
    public integer sub(integer x, integer y){
        return x-y;

}
     public integer mul(integer x, integer y){
        return x*y;

}

public Decimal div(Integer x, Integer y){
        
        Decimal result;
        try{
            result = Decimal.valueOf(x)/ Decimal.valueOf(y);
        }catch(Exception e){
            System.debug('Error  : '+ e.getMessage() );
        }
        
        
        
        
        return result;
    }
    
    
    
}