import { LightningElement, api } from 'lwc';

export default class CmpFilho extends LightningElement {
    @api sala;

    exporNome(){
        const itemSelecionado = new CustomEvent('mandaritem', {detail:this.sala,bubbles:true});
        this.dispatchEvent(itemSelecionado);
    }
}