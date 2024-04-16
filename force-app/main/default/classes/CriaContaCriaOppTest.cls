@isTest
public class CriaContaCriaOppTest {
    @isTest
    static void TesteNovoContatoConta(){
        Account acct = new Account();
        acct.Name = 'Teste nova conta';
        
        insert acct;
        
        List<Contact> contatos = [SELECT Id, FirstName, LastName
                                 FROM Contact
                                 WHERE FirstName = 'Hello'
                                 AND LastName = 'World'
                                 AND AccountId = :acct.Id];
        
        System.assert(contatos.size() > 0, 'Contato relacionado não encontrado');
    }
}