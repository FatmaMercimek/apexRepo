public class School {
	private string name;
    private integer numberofStudent;
    
    
    public school(string schoolName){
        System.debug('school constructor is working...');
        setName(schoolName);
        system.debug(name+' '+'is created');
    }
    
    
    public void setName(string schoolName){
        name=schoolName;
    }
    public string getName(){
        return name;
    }
    public void setnumberofStudent(integer studentnumber){
        numberofStudent=studentnumber;
    }
    public integer getnumberofStudent(){
        return numberofStudent;
    }
    
}