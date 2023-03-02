import { LightningElement } from 'lwc';

export default class CmpPai extends LightningElement {

    constructor(){
        super();
        this.template.addEventListener('mandaritem',this.tratarItem.bind(this));
    }

    listaSalas = [
        {nome: 'A1', vagas: 10},
        {nome: 'A2', vagas: 12},
        {nome: 'B1', vagas: 18},
        {nome: 'C2', vagas: 7},
        {nome: 'B2', vagas: 20}
    ]

    tratarItem(event){
       const sala = event.detail;
       alert(sala.nome); 
    }
}