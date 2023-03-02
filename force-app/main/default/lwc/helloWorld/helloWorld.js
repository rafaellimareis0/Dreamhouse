import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    nome = 'World';

    handlechange(event){
        this.nome = event.target.value;
    }

    get nomeValor(){
        if(this.nome == '') {
            return 'World';
        }
        return this.nome;
    }
}