public class Greeting {
    string firstName='Angela';
    public string fullName(){
         string lastName='Smith';
         string fullName=firstName+' '+lastName;
          return fullName;
    }
    public string greeting(){
        string greeting='Hi';
        string greet=(greeting+ ' '+ fullName());
        return greet;
    }
}