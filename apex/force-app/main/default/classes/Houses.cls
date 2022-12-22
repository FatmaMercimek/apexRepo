public class Houses {
	private string type;
    private integer age;
    public Houses(){
        
    	type= 'Condo';
          age=20;
    }
    public Houses( string nType, integer nAge){
       type=nType;
        age=nAge;
        
    }
    
    public void display(){
        system.debug('House\'s type is '+type+' House\'s age is '+ age);
    }
    
    
}