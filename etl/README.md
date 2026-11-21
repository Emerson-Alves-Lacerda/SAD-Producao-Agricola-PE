# ETL — Pentaho Data Integration

Esta pasta contém as transformações e o Job desenvolvidos no Pentaho Data Integration (PDI) para realizar a carga do Data Mart de Produção Agrícola de Pernambuco.

## Carga Total

### `carga_total.kjb`

Job responsável por executar a carga completa do Data Mart.

Ordem de execução:

1. Limpeza dos dados existentes no Data Mart;
2. Carga da `DIM_TEMPO`;
3. Carga da `DIM_MUNICIPIO`;
4. Carga da `DIM_PRODUTO`;
5. Carga da `FATO_PRODUCAO`.

A limpeza é realizada primeiro na tabela fato e depois nas dimensões, respeitando as dependências das chaves estrangeiras. Isso permite executar novamente a carga total sem duplicar os registros.

Resultados esperados após a carga:

- `DIM_TEMPO`: 10 registros;
- `DIM_MUNICIPIO`: 184 registros;
- `DIM_PRODUTO`: 85 registros;
- `FATO_PRODUCAO`: 156.400 registros.

## Transformações

### `carga_dim_tempo.ktr`

Responsável pela carga da dimensão `DIM_TEMPO`.

- geração dos anos de 2016 a 2025;
- preparação do campo ano;
- carga de 10 registros.

### `carga_dim_municipio.ktr`

Responsável pela carga da dimensão `DIM_MUNICIPIO`.

Principais operações:

- leitura do CSV tratado;
- seleção dos campos município e UF;
- exclusão de Fernando de Noronha;
- ordenação dos municípios;
- remoção de registros duplicados;
- inclusão do estado de Pernambuco;
- carga de 184 municípios.

### `carga_dim_produto.ktr`

Responsável pela carga da dimensão `DIM_PRODUTO`.

Principais operações:

- leitura do CSV tratado;
- seleção de produto e unidades de medida;
- ordenação dos produtos;
- remoção de registros duplicados;
- carga de 85 produtos.

### `carga_fato_producao.ktr`

Responsável pela carga da tabela `FATO_PRODUCAO`.

Principais operações:

- leitura do arquivo tratado em UTF-8;
- exclusão de Fernando de Noronha;
- lookup de `id_tempo`;
- lookup de `id_municipio`;
- lookup de `id_produto`;
- preparação dos campos e métricas da tabela fato;
- carga de 156.400 registros.

## Arquivo SQL

- `criar_dim_tempo.sql` — script utilizado durante a criação e configuração da dimensão de tempo.

## Origem

Arquivo utilizado nas cargas:

`PAM_PE_2016_2025_tratado.csv`

## Destino

Banco de dados MySQL:

`sad_producao_agricola`

O modelo dimensional segue o padrão Star Schema, composto pelas dimensões `DIM_TEMPO`, `DIM_MUNICIPIO` e `DIM_PRODUTO`, relacionadas à tabela `FATO_PRODUCAO`.
