import { LightningElement, track } from 'lwc';

export default class Calculadora extends LightningElement {
    @track lista = [];
    primeiro;
    segundo;

    handleChange(event){
        const target = event.target;
        this[target.name] = target.value;
    }

    handleClick(event){
        const target = event.target;
        let result;
        if(target.name == '+'){
            result = "Valor " + this.primeiro + " + valor " + this.segundo + ". Resultado é " + (Number(this.primeiro) + Number(this.segundo));
        } else if(target.name == '-'){
            result = "Valor " + this.primeiro + " - valor " + this.segundo + ". Resultado é " + (Number(this.primeiro) - Number(this.segundo));
        } else if(target.name == 'X'){
            result = "Valor " + this.primeiro + " x valor " + this.segundo + ". Resultado é " + (Number(this.primeiro) * Number(this.segundo));
        } else if(target.name == '/'){
            result = "Valor " + this.primeiro + " / valor " + this.segundo + ". Resultado é " + (Number(this.primeiro) / Number(this.segundo));
        }
        this.lista.push(result);
    }
    limparLista(){
        this.lista = [];
    }

    get listaTratada() {
        if(this.lista.length == 0){
            return ["Não há histórico"];
        }
        return this.lista;
    }
}