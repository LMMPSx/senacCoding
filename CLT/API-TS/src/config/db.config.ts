export const config = {
    HOST: 'mororo',
    PORT: '3306',
    USER: 'root',
    PASSWORD: 'root',
    DB: 'apifarmacia',
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    }
};

export const dialect = 'mysql';