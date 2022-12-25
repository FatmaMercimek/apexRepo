/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class OppCreate {
    @testvisible
    public static void Newopp() {
        Opportunity o= new Opportunity();
        o.Name= 'New opportunity';
        o.StageName= 'Qualification';
        o.CloseDate= date.newInstance(2023, 01, 05);
        insert o;


    }
}
