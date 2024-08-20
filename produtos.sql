CREATE DATABASE produtos;

\c produtos;

CREATE TABLE "Produtos" (
    "id" VARCHAR(255) NOT NULL,
    "nome" VARCHAR(80) NOT NULL,
    "preco" FLOAT(10,5) NOT NULL,
    CONSTRAINT "PK_Produto" PRIMARY KEY ("id")
);