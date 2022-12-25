/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@istest
public class OppCreate_Test {
    @istest
    public static void Newopp_Test() {
        OppCreate.Newopp();

        Opportunity o=[ select id, name,StageName from Opportunity where name ='New opportunity'];
       System.assertEquals('New opportunity', o.Name);
        System.assertEquals('Qualification', o.StageName);

    }
}
