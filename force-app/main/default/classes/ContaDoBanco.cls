public class ContaDoBanco {
	private Decimal saldoParcial = 0;
    private static Decimal saldoTotal = 0;
    
    public void depositar(Decimal valor){
        saldoParcial += valor;
        saldoTotal += valor;
    }
    
    public void sacar(Decimal valor){
        if(saldoTotal >= valor){
            saldoParcial -= valor;
        	saldoTotal -= valor;
        } else {
            System.debug('Saldo insuficiente');
        }
    }
    
    public Decimal obterSaldoParcial(){
        return saldoParcial;
    }
    
    public static Decimal obterSaldoTotal(){
        return saldoTotal;
    }
}