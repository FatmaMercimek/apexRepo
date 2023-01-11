import { LightningElement, api } from 'lwc';

export default class CalendlyComponent extends LightningElement {

@api calendlyURL;

connectedCallback() {

//x=y?a:b; ternary operator duzgun gelmeyen URL deki hatalari duzeltmek icin kullaniliyor
this.calendlyURL=this.calendlyURL?this.calendlyURL.replaceAll('%3A', ':').replaceAll('%2F', '/'):'';
   
    console.log(this.calendlyURL);
}






}