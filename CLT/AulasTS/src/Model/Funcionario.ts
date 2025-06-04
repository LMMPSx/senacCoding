import { Telefone } from './Telefone';

export class Funcionario {
    private cpf: string;
    private nome: string;
    private nomeSocial?: string;
    private email: string;
    private sexo: string;
    private estadoCivil: string;
    private dataNascimento: Date;
    private cargaHoraria: number;
    private salario: number;
    private comissao?: number;
    private dataAdmissao: Date;
    private dataDemissao?: Date;
    private telefones: Telefone[];

    constructor(
        cpf: string,
        nome: string,
        email: string,
        sexo: string,
        estadoCivil: string,
        dataNascimento: Date,
        cargaHoraria: number,
        salario: number,
        dataAdmissao: Date,
        nomeSocial?: string,
        comissao?: number,
        dataDemissao?: Date
    ) {
        this.cpf = cpf;
        this.nome = nome;
        this.email = email;
        this.sexo = sexo;
        this.estadoCivil = estadoCivil;
        this.dataNascimento = dataNascimento;
        this.cargaHoraria = cargaHoraria;
        this.salario = salario;
        this.dataAdmissao = dataAdmissao;
        this.nomeSocial = nomeSocial;
        this.comissao = comissao;
        this.dataDemissao = dataDemissao;
        this.telefones = [];
    }

    public getCpf(): string {
        return this.cpf;
    }

    public getNome(): string {
        return this.nome;
    }

    public getNomeSocial(): string | undefined {
        return this.nomeSocial;
    }

    public getEmail(): string {
        return this.email;
    }

    public getSexo(): string {
        return this.sexo;
    }

    public getEstadoCivil(): string {
        return this.estadoCivil;
    }

    public getDataNascimento(): Date {
        return this.dataNascimento;
    }

    public getCargaHoraria(): number {
        return this.cargaHoraria;
    }

    public getSalario(): number {
        return this.salario;
    }

    public getComissao(): number | undefined {
        return this.comissao;
    }

    public getDataAdmissao(): Date {
        return this.dataAdmissao;
    }

    public getDataDemissao(): Date | undefined {
        return this.dataDemissao;
    }

    public getTelefones(): Telefone[] {
        return this.telefones;
    }

    public setNome(nome: string): void {
        this.nome = nome;
    }

    public setNomeSocial(nomeSocial: string | undefined): void {
        this.nomeSocial = nomeSocial;
    }

    public setEmail(email: string): void {
        this.email = email;
    }

    public setSexo(sexo: string): void {
        this.sexo = sexo;
    }

    public setEstadoCivil(estadoCivil: string): void {
        this.estadoCivil = estadoCivil;
    }

    public setDataNascimento(dataNascimento: Date): void {
        this.dataNascimento = dataNascimento;
    }

    public setCargaHoraria(cargaHoraria: number): void {
        this.cargaHoraria = cargaHoraria;
    }

    public setSalario(salario: number): void {
        this.salario = salario;
    }

    public setComissao(comissao: number | undefined): void {
        this.comissao = comissao;
    }

    public setDataAdmissao(dataAdmissao: Date): void {
        this.dataAdmissao = dataAdmissao;
    }

    public setDataDemissao(dataDemissao: Date | undefined): void {
        this.dataDemissao = dataDemissao;
    }

    public addTelefone(telefone: Telefone): void {
        this.telefones.push(telefone);
    }

    public addNumeroTelefone(numero: string): void {
        const telefone = new Telefone(numero);
        this.addTelefone(telefone);
    }

    public removeTelefone(telefone: Telefone): void {
        const index = this.telefones.indexOf(telefone);
        if (index > -1) {
            this.telefones.splice(index, 1);
        }
    }

    public removeNumeroTelefone(numero: string): void {
        this.telefones = this.telefones.filter(telefone => telefone.getNumero() !== numero);
    }

    public toString(): string {
        return `
        Funcionario: ${this.nome}, 
        CPF: ${this.cpf}, 
        Email: ${this.email}, 
        Sexo: ${this.sexo}, 
        Estado Civil: ${this.estadoCivil}, 
        Data de Nascimento: ${this.dataNascimento.toLocaleDateString()}, 
        Carga Horária: ${this.cargaHoraria} horas, 
        Salário: R$${this.salario.toFixed(2)}, 
        Comissão: R$${this.comissao?.toFixed(2) ?? 'N/A'}, 
        Data de Admissão: ${this.dataAdmissao.toLocaleDateString()}, 
        Data de Demissão: ${this.dataDemissao ? this.dataDemissao.toLocaleDateString() : 'N/A'}, 
        Telefones: [${this.telefones.map(t => t.getNumero()).join(', ')}]
        `;
    }
}