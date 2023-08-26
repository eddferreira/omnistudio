public class GetAccount {
    public Account accountGet(Id idConta ) {
        List<Account> buscaConta = [Select Name, Id from Account where Id =: idConta];
        Account conta = new Account();

        conta.Name = buscaConta.get(0).Name;
        conta.Id = buscaConta.get(0).Id;

        return conta;
    }
}