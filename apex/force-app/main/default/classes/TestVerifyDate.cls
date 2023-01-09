@istest
private class TestVerifyDate {
     @isTest static void test1() {
         Date dw30 =VerifyDate.CheckDates(date.valueOf('2022-12-17'),date.valueOf('2022-12-23'));
         System.assertEquals(date.valueOf('2022-12-23'), dw30);
   
    }
   
     @isTest static void test2() {
         Date dwn30 =VerifyDate.CheckDates(date.valueOf('2022-12-17'),date.valueOf('2023-02-23'));
         System.assertEquals(date.valueOf('2022-12-31'), dwn30);
   
    }

}