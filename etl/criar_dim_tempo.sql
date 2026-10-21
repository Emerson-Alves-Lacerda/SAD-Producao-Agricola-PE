CREATE DATABASE IF NOT EXISTS sad_producao_agricola;

USE sad_producao_agricola;

CREATE TABLE IF NOT EXISTS dim_tempo (
    id_tempo INT AUTO_INCREMENT PRIMARY KEY,
    ano INT NOT NULL UNIQUE
);