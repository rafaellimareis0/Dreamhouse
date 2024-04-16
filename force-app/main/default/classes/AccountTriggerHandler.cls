public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> accounts) {
        for (Account acc : accounts) {
            // Ensure ShippingState is the same as BillingState
            acc.ShippingState = acc.BillingState;
        }
    }
}