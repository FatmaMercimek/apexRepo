@istest
public class LoginScreenTest {
    @istest
    public static void test1(){
        string result=LoginScreen.loginscreenmethod('Fatma50',1980);
        system.assertEquals('You logged in succesfully', result);
    }
    @istest
    public static void test2(){
        string result=LoginScreen.loginscreenmethod('Fatma50',2000);
        system.assertEquals('You entered wrong password', result);
    }
    @istest
    public static void test3(){
        string result=LoginScreen.loginscreenmethod('Fatma20',1980);
        system.assertEquals('You entered wrong username', result);
    }
    @istest
    public static void test4(){
        string result=LoginScreen.loginscreenmethod('Fatma10',2001);
        system.assertEquals('Your  both username and password wrong', result);
    }

}