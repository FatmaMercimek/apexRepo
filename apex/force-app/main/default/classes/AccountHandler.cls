public class AccountHandler {

    public static Account insertNewAccount(string accname){
      try {
    Account acct = new Account(Name=accname);  
    insert acct;
          return acct;
} catch (DmlException e) {
    System.debug('A DML exception has occurred: ' + e.getMessage());
    return null;
}  
    }
}