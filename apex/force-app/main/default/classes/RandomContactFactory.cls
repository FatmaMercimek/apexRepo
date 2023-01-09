public class RandomContactFactory {
    
    public static list <Contact>  generateRandomContacts ( integer numConts, string lastName){
        list<Contact> conts= new list<Contact>();
        for (integer i=0; i<numConts;i++){
            Contact a = new Contact(firstName='Test'+i, lastname=lastName);
            conts.add(a);
        }
        insert conts;
        return conts;
    }
}