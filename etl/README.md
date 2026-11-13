# ETL — Pentaho Data Integration

Esta pasta contém as transformações desenvolvidas no Pentaho Data Integration (PDI) para realizar a carga do Data Mart de Produção Agrícola de Pernambuco.

## Transformações

### `carga_dim_tempo.ktr`
Responsável pela carga da dimensão `DIM_TEMPO`.

- Geração dos anos de 2016 a 2025;
- Preparação do campo ano;
- Carga de 10 registros.

### `carga_dim_municipio.ktr`
Responsável pela carga da dimensão `DIM_MUNICIPIO`.

Principais operações:

- leitura do CSV tratado;
- seleção dos campos município e UF;
- exclusão de Fernando de Noronha;
- ordenação dos municípios;
- remoção de registros duplicados;
- inclusão do estado Pernambuco;
- carga de 184 municípios.

### `carga_dim_produto.ktr`
Responsável pela carga da dimensão `DIM_PRODUTO`.

Principais operações:

- leitura do CSV tratado;
- seleção de produto e unidades de medida;
- ordenação;
- remoção de duplicados;
- carga de 85 produtos.

### `carga_fato_producao.ktr`
Responsável pela carga da tabela `FATO_PRODUCAO`.

Principais operações:

- leitura do arquivo tratado em UTF-8;
- exclusão de Fernando de Noronha;
- lookup de `id_tempo`;
- lookup de `id_municipio`;
- lookup de `id_produto`;
- preparação das métricas da tabela fato;
- carga de 156.400 registros.

## Arquivo SQL

- `criar_dim_tempo.sql` — script utilizado durante a criação/configuração da dimensão de tempo.

## Origem

Arquivo utilizado nas cargas:

`PAM_PE_2016_2025_tratado.csv`

## Destino

Banco de dados MySQL:

`sad_producao_agricola`

O modelo dimensional utilizado segue o padrão Star Schema, composto pelas dimensões `DIM_TEMPO`, `DIM_MUNICIPIO` e `DIM_PRODUTO`, relacionadas à tabela `FATO_PRODUCAO`.
