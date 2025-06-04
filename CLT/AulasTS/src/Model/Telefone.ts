export class Telefone {
    private numero: string;

    constructor(numero: string) {
        this.numero = numero;
    }
    
    public getNumero(): string {
        return this.numero;
    }

}