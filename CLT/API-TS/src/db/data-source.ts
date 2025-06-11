import "reflect-metadata";
import { DataSource } from "typeorm";
import { config, dialect } from "../config/db.config";
import { Funcionario } from "../models/Funcionario"


export const AppDataSource = new DataSource({
    type: dialect,
    host: config.HOST,
    port: parseInt(config.PORT),
    username: config.USER,
    password: config.PASSWORD,
    database: config.DB,
    entities: [ Funcionario ],
    synchronize: true,
    logging: true,
})