@isTest
public class calculateTest {
    
    @istest
    public static void sum1(){
      calculate calc= New calculate();
        integer result= calc.sum(10,20);
        system.assertEquals(30, result);
    }
       @istest
    public static void sum2(){
      calculate calc= New calculate();
        integer result= calc.sum(-10,-20);
        system.assertEquals(-30, result);
    }
       @istest
    public static void sum3(){
      calculate calc= New calculate();
        integer result= calc.sum(0,-20);
        system.assertEquals(-20, result);
    }
    @istest
    public static void sub1(){
        calculate calc= New calculate();
        integer result= calc.sub(30,20);
        system.assertEquals(10, result);
            
    }
  @istest
    public static void mul1(){
        calculate calc= New calculate();
        integer result= calc.mul(3,2);
        system.assertEquals(6, result);
            
    }
  @istest
    public static void div1(){
        calculate calc= New calculate();
        decimal result= calc.div(5,10);
        system.assertEquals(0.5, result);
        
            
    }
    @istest
    public static void div0(){
        calculate calc= New calculate();
        decimal result= calc.div(10,0);
        system.assertEquals(null, result);
        
            
    }

}