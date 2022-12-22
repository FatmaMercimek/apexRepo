public class MergeAccWorks {

    public void conaccopp(string accname,string oppName, integer howmanyOpp, string conFirstName,string conLastname,integer howmanyCon){

		Account newacc1=New Account(name=accname);
		insert newacc1;
        
		list<contact> multicon= new list<contact>();

		for(integer n=1;N<=howmanyCon;n++){
    	Contact newcon=new contact();
    	newcon.firstname=accname;
    	newcon.lastname='employer'+n;
    	newcon.accountid=newacc1.id;
    
    	multicon.add(newcon);
        }
        insert multicon;
        
		list<opportunity> multiopp= new list<opportunity>();

		for(integer o=1;o<=howmanyOpp;o++){
    	Opportunity newopp=new opportunity();
    	newopp.name=oppname+o;
        newopp.closedate=date.today()+o*3;    
    	newopp.stageName='Needs Analysis';
    	newopp.accountid=newacc1.id;
    
    	multiopp.add(newopp);    
                        
            
}
     
        insert multiopp;
        
    
    }
        
    public void deleteacccon(string deleteaccname, string deleteconname, string deleteoppname){
        
        string employername='%'+ deleteaccname+'%';
        list<contact> deletecon=[select id from contact where name like :employername];

		delete deletecon;

		list<Account> deleteacc=[select id from account where name=:DeleteAccname];

		delete deleteacc;
       
        list<Opportunity> deleteopp=[select id from opportunity where name=:DeleteOppname];

		delete deleteopp;
    }
    
}