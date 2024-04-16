public class AccountHandler {
    public static Account insertNewAccount(String accountName) {
        try {
            if (String.isNotBlank(accountName)) {
                Account newAccount = new Account(Name = accountName);
                insert newAccount;
                return newAccount;
            }
        } catch (DmlException e) {
            // Handle DML exception, you can log it or perform additional actions if needed.
            System.debug('DML Exception: ' + e.getMessage());
        }
        
        return null;
    }
}