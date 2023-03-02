import { LightningElement, track } from 'lwc';

export default class CondicionalAulaLWC extends LightningElement {
    @track listaCidades = ['Recife','Salvador','São Paulo'];
    cidade;
    condicional = false;
    handleChange(event){
        const target = event.target;
        if(target.name == 'view'){
            this.condicional = event.target.checked;
        }
        else if(target.name == 'cidade'){
            this.cidade = target.value;
        }
    }

    handleclick(){
        if(this.cidade){
            this.listaCidades.push(this.cidade);
        }
    }
}