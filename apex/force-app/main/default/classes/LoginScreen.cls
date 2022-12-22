public class LoginScreen {
    public static string loginscreenmethod(String Username, Integer password){
        
        string loginMessage='';
        if(username=='Fatma50'&& password==1980){
            loginMessage='You logged in succesfully';
        }
        else if(username=='Fatma50'&& password!=1980){
            loginMessage='You entered wrong password';
        }
        else if(username!='Fatma50'&& password==1980){
            loginMessage='You entered wrong username';
        }
        else{
            loginMessage='Your  both username and password wrong';
        }
        return loginMessage;
    }
}