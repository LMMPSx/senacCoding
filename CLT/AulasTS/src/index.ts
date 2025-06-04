import { Funcionario } from "./Model/Funcionario";
import { Telefone } from "./Model/Telefone";

const funcionario = new Funcionario(
    "123.456.789-00",           // cpf
    "João",            // nome
    "joao.silva@email.com",     // email
    "Masculino",                // sexo
    "Solteiro",                 // estado civil
    new Date(1990, 4, 15),      // data de nascimento (15/05/1990)
    40,                         // carga horária
    3500.00,                    // salário
    new Date(2022, 0, 10),      // data de admissão (10/01/2022)
    undefined,                  // nome social (opcional)
    500.00                      // comissão (opcional)
);

funcionario.setNome("João da Silva");
funcionario.addNumeroTelefone("11987654321");

console.log(funcionario)
console.log(funcionario.toString());