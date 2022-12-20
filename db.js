import pg from "pg";
const { Pool } = pg;

let localPoolConfig = {
  user: "postgres",
  password: "Ervin321_321",
  host: "localhost",
  port: "5432",
  database: "jwttutorial",
};

const poolConfig = process.env.DATABASE_URL
  ? {
      connectionString: process.env.DATABSE_URL,
      ssl: { rejectUnauthorized: false },
    }
  : localPoolConfig;

const pool = new Pool(poolConfig);

export default pool;
