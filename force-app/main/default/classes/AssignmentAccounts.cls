public with sharing class AssignmentAccounts {
    public AssignmentAccounts() {
        List<Account> accounts = new List <Account>();
        for(Integer i = 1; i < 11; i++){
            Account acct = new Account();
            acct.Name = 'Assignment Account ' + i;
            accounts.add(acct);
        }
        insert accounts;

        Integer numberOfEmployees = 100;
        for(Account acct : accounts) {
            acct.NumberOfEmployees = numberOfEmployees;
            numberOfEmployees += 100;
        }
        update accounts;
    }
}