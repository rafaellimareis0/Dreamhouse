@IsTest
public class TestVerifyDate {
    
	@isTest static void date2within30daysdate1() {
        Date returnDate1 = VerifyDate.CheckDates(date.valueOf('2022-07-14'), date.valueOf('2022-07-15'));
        System.assertEquals(date.valueOf('2022-07-15'), returnDate1);
    }
    
    @isTest static void date2NOTwithin30daysdate1() {
        Date returnDate2 = VerifyDate.CheckDates(date.valueOf('2022-07-14'), date.valueOf('2022-08-24'));
        System.assertEquals(date.valueOf('2022-07-31'), returnDate2);
    }
}