#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER evgen WITH  PASSWORD '123456';
    CREATE DATABASE rosbank OWNER 'evgen';
    GRANT ALL PRIVILEGES ON DATABASE "rosbank" to evgen;
EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$WORK_DB" <<-EOSQL
    CREATE TABLE users (user_login varchar(30) PRIMARY KEY, user_password varchar(32) NOT NULL);
    CREATE TABLE company (company_id int PRIMARY KEY, company_name varchar(50));
    INSERT INTO company (company_id,company_name) values (1,'ROSBANK');
    INSERT INTO company (company_id,company_name) values (2,'FORBANK');
    GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO "evgen";
EOSQL
