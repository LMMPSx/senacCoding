import { Entity, PrimaryColumn, Column, Index } from 'typeorm';

@Entity('Funcionario', { schema: 'farmarciaTADS039M' })
@Index('email_UNIQUE', ['email'], { unique: true }) // Indica que 'email' deve ser único

export class Funcionario {

  @PrimaryColumn({ type: 'varchar', length: 14 })
  cpf: string;

  @Column({ type: 'varchar', length: 60 })
  nome: string;

  @Column({ type: 'varchar', length: 45, nullable: true })
  nomeSocial?: string;

  @Column({ type: 'varchar', length: 45 })
  email: string;

  @Column({ type: 'char', length: 1 })
  sexo: string;

  @Column({ type: 'varchar', length: 15 })
  estadoCivil: string;

  @Column({ type: 'date' })
  dataNasc: string;

  @Column({ type: 'int' })
  ch: number;

  @Column({ type: 'decimal', precision: 7, scale: 2, unsigned: true, zerofill: true })
  salario: number;

  @Column({ type: 'decimal', precision: 6, scale: 2, unsigned: true, nullable: true, default: null, zerofill: true })
  comissao?: number;

  @Column({ type: 'datetime' })
  dataAdm: Date;

  @Column({ type: 'datetime', nullable: true, default: null })
  dataDem?: Date;

  @Column({ type: 'decimal', precision: 6, scale: 2, unsigned: true, nullable: true, zerofill: true })
  fg?: number;

  constructor(
    cpf: string,
    nome: string,
    nomeSocial: string | null,
    email: string,
    sexo: string,
    estadoCivil: string,
    dataNasc: string,
    ch: number,
    salario: number,
    comissao: number | null,
    dataAdm: Date,
    dataDem: Date | null,
    fg: number | null
  ) {
    this.cpf = cpf;
    this.nome = nome;
    this.nomeSocial = nomeSocial || undefined; // Define como undefined se for null
    this.email = email;
    this.sexo = sexo;
    this.estadoCivil = estadoCivil;
    this.dataNasc = dataNasc;
    this.ch = ch;
    this.salario = salario;
    this.comissao = comissao || undefined; // Define como undefined se for null
    this.dataAdm = dataAdm;
    this.dataDem = dataDem || undefined; // Define como undefined se for null
    this.fg = fg || undefined; // Define como undefined se for null
  }
}
