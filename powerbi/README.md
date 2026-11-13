# Power BI — Aplicação OLAP

Esta pasta contém a aplicação OLAP desenvolvida no Microsoft Power BI para análise da produção agrícola dos municípios de Pernambuco.

## Arquivo principal

- `OLAP - SAD.pbit` — template do Power BI contendo o modelo, medidas DAX, relacionamentos e páginas de análise.

## Estrutura da aplicação

A aplicação possui três páginas principais:

### 1. Visão Geral
Apresenta os principais indicadores da produção agrícola, incluindo:

- área plantada acumulada;
- área colhida acumulada;
- valor da produção;
- quantidade de municípios;
- quantidade de produtos;
- evolução do valor da produção;
- ranking de municípios;
- ranking de produtos.

### 2. Análise da Produção
Permite analisar uma cultura agrícola específica, considerando:

- quantidade produzida;
- rendimento médio;
- área colhida;
- unidade da quantidade;
- unidade do rendimento;
- evolução da produção;
- evolução do rendimento;
- ranking dos municípios produtores.

### 3. Análise Econômica e Territorial
Apresenta:

- município líder;
- produto líder;
- valor da produção;
- evolução do valor da produção;
- ranking dos municípios;
- ranking dos produtos;
- distribuição territorial da produção em Pernambuco.

## Filtros

As análises podem ser realizadas utilizando filtros de:

- ano;
- município;
- produto.

## Fonte dos dados

Pesquisa da Produção Agrícola Municipal — PAM/IBGE, Tabela SIDRA 5457.

Período analisado: 2016 a 2025.

## Modelo de dados

O Power BI utiliza o Data Mart desenvolvido em esquema estrela, composto por:

- `DIM_TEMPO`;
- `DIM_MUNICIPIO`;
- `DIM_PRODUTO`;
- `FATO_PRODUCAO`.

Os dados foram tratados e carregados utilizando Pentaho Data Integration (PDI) e armazenados em banco de dados MySQL.
