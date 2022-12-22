public class horse {     // private / Protected / public / global 
    //properties
    private Integer age=0;   // abstraction = age is hidden.
    private List<String> education = New List<String>();
    public String race;
    public String name;
    private Integer wonRace=0; // duplication new horse....
    public Static Integer wonRaceforAll=0;
    

    //methods 
    //
    public void setWonRace(){
        wonRace+=1;
        wonRaceforAll+=1;
    }
    
    public Integer getWonRace(){
        return wonRace;
    }
    
    public Integer getAge(){  // getter method"
        
        return age;
    }
    public void setAge(Integer ageofTheHorse){  // setter method
        // Polymorphism
        age=ageofTheHorse;
        // system.debug('Horse age is :'+ age);
    }
    
    public void setAge(){
        // Polymorphism
        age+=1;
        // system.debug('Your horse is getting older.  :'+ age);
    }
    
    public void eat(){
        system.debug('Horse is eating');
    }
    
    public void train(String trainType){
          system.debug(name +' named Horse is trained as '+ trainType);
          education.add(trainType);
    }
    
    public void setName(String horseName){
        name=horseName;
        System.debug('Horse named as  : '+horseName);
    }
   
}