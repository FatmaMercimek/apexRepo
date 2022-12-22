public class BusinessToCustommer {
    
    // single create method (2 params string,string)   V1 4 isim olursa ne olacak....  ?
    /*
public void create(String fName, String lname){
String fullName = fName+' '+lname;
Account singleAcc = New Account(name=fullName);
insert singleAcc;

Contact singleCon = New Contact(firstName=fName,lastName=lname,accountid=singleAcc.id);
insert singleCon;

}

*/
    
    // single create method (1 param string )
    public void create(String fullName){
        
        Integer numberofWords = fullname.split(' ').size();
        
        String lastName = fullname.split(' ').get(numberofWords-1);
        
        String firstName = fullname.replace(lastName,'');  
        
        Account singleAcc = New Account(name=fullName);
		insert singleAcc;
        
        Contact singleCon = New Contact(firstName=firstName,lastName=lastName,accountid=singleAcc.id);
		insert singleCon;
        

        
    }
    
    
    
    
    
    // multi create method (1 param list)
    public void create(List<String> nameList){
        system.debug(nameList); 
        
    }
    
    
    
}