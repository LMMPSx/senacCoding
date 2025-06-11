"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.Funcionario = void 0;
const typeorm_1 = require("typeorm");
let Funcionario = class Funcionario {
    constructor(cpf, nome, nomeSocial, email, sexo, estadoCivil, dataNasc, ch, salario, comissao, dataAdm, dataDem, fg) {
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
};
exports.Funcionario = Funcionario;
__decorate([
    (0, typeorm_1.PrimaryColumn)({ type: 'varchar', length: 14 }),
    __metadata("design:type", String)
], Funcionario.prototype, "cpf", void 0);
__decorate([
    (0, typeorm_1.Column)({ type: 'varchar', length: 60 }),
    __metadata("design:type", String)
], Funcionario.prototype, "nome", void 0);
__decorate([
    (0, typeorm_1.Column)({ type: 'varchar', length: 45, nullable: true }),
    __metadata("design:type", String)
], Funcionario.prototype, "nomeSocial", void 0);
__decorate([
    (0, typeorm_1.Column)({ type: 'varchar', length: 45 }),
    __metadata("design:type", String)
], Funcionario.prototype, "email", void 0);
__decorate([
    (0, typeorm_1.Column)({ type: 'char', length: 1 }),
    __metadata("design:type", String)
], Funcionario.prototype, "sexo", void 0);
__decorate([
    (0, typeorm_1.Column)({ type: 'varchar', length: 15 }),
    __metadata("design:type", String)
], Funcionario.prototype, "estadoCivil", void 0);
__decorate([
    (0, typeorm_1.Column)({ type: 'date' }),
    __metadata("design:type", String)
], Funcionario.prototype, "dataNasc", void 0);
__decorate([
    (0, typeorm_1.Column)({ type: 'int' }),
    __metadata("design:type", Number)
], Funcionario.prototype, "ch", void 0);
__decorate([
    (0, typeorm_1.Column)({ type: 'decimal', precision: 7, scale: 2, unsigned: true, zerofill: true }),
    __metadata("design:type", Number)
], Funcionario.prototype, "salario", void 0);
__decorate([
    (0, typeorm_1.Column)({ type: 'decimal', precision: 6, scale: 2, unsigned: true, nullable: true, default: null, zerofill: true }),
    __metadata("design:type", Number)
], Funcionario.prototype, "comissao", void 0);
__decorate([
    (0, typeorm_1.Column)({ type: 'datetime' }),
    __metadata("design:type", Date)
], Funcionario.prototype, "dataAdm", void 0);
__decorate([
    (0, typeorm_1.Column)({ type: 'datetime', nullable: true, default: null }),
    __metadata("design:type", Date)
], Funcionario.prototype, "dataDem", void 0);
__decorate([
    (0, typeorm_1.Column)({ type: 'decimal', precision: 6, scale: 2, unsigned: true, nullable: true, zerofill: true }),
    __metadata("design:type", Number)
], Funcionario.prototype, "fg", void 0);
exports.Funcionario = Funcionario = __decorate([
    (0, typeorm_1.Entity)('Funcionario', { schema: 'farmarciaTADS039M' }),
    (0, typeorm_1.Index)('email_UNIQUE', ['email'], { unique: true }) // Indica que 'email' deve ser único
    ,
    __metadata("design:paramtypes", [String, String, Object, String, String, String, String, Number, Number, Object, Date, Object, Object])
], Funcionario);
