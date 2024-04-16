@isTest
public class AccountTriggerTest {
    @isTest
    static void testAccountTrigger() {
        // Create 200 Account records with BillingState of CA
        List<Account> testAccounts = new List<Account>();
        for (Integer i = 0; i < 200; i++) {
            Account acc = new Account(
                Name = 'Test Account ' + i,
                BillingState = 'CA'
            );
            testAccounts.add(acc);
        }

        // Insert the test records
        insert testAccounts;

        // Verify that all 200 records have ShippingState set to CA
        List<Account> insertedAccounts = [SELECT Id, BillingState, ShippingState FROM Account WHERE Id IN :testAccounts];
        for (Account acc : insertedAccounts) {
            System.assertEquals('CA', acc.ShippingState, 'ShippingState should be set to CA');
        }
    }
}