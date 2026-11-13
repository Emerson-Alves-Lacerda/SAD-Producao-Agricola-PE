# SAD — Produção Agrícola de Pernambuco

Data Mart desenvolvido para análise da produção agrícola dos municípios de Pernambuco utilizando dados da Pesquisa da Produção Agrícola Municipal (PAM/IBGE), referentes ao período de **2016 a 2025**.

Projeto desenvolvido para a disciplina de **Sistema de Apoio à Decisão (SAD)** do curso de Bacharelado em Sistemas de Informação.

## Sobre o projeto

O projeto tem como objetivo desenvolver um Data Mart para apoiar a análise da produção agrícola dos municípios de Pernambuco, permitindo acompanhar a evolução histórica dos dados e realizar comparações entre municípios, produtos agrícolas e períodos.

A solução contempla desde a obtenção e preparação dos dados até a construção de uma aplicação OLAP interativa no Microsoft Power BI.

## Fonte dos dados

- Pesquisa da Produção Agrícola Municipal — PAM;
- Instituto Brasileiro de Geografia e Estatística — IBGE;
- Sistema SIDRA;
- Tabela SIDRA 5457;
- Período analisado: 2016 a 2025;
- Abrangência: municípios de Pernambuco.

## Indicadores analisados

- Área plantada ou destinada à colheita;
- Área colhida;
- Quantidade produzida;
- Rendimento médio da produção;
- Valor da produção.

Alguns produtos possuem unidades específicas de quantidade e rendimento. Essas unidades foram preservadas conforme disponibilizadas pela PAM/IBGE.

## Arquitetura da solução

O fluxo desenvolvido no projeto é composto por:

`PAM/IBGE → CSV → Pentaho Data Integration → MySQL/Data Mart → Power BI/OLAP`

### Extração, Transformação e Carga

O processo ETL foi desenvolvido no **Pentaho Data Integration (PDI)**.

Foram criadas transformações para carregar:

- `DIM_TEMPO`;
- `DIM_MUNICIPIO`;
- `DIM_PRODUTO`;
- `FATO_PRODUCAO`.

A carga final da tabela fato contém **156.400 registros**, considerando a granularidade definida para o projeto.

## Modelagem dimensional

O projeto utiliza a abordagem **Bottom-Up**, partindo da construção de um Data Mart específico para análise da produção agrícola.

O modelo dimensional adotado é o **Star Schema**, composto por:

- `DIM_TEMPO`;
- `DIM_MUNICIPIO`;
- `DIM_PRODUTO`;
- `FATO_PRODUCAO`.

### Granularidade

`Produto Agrícola × Município × Ano`

O Data Mart contempla:

- **184 municípios**;
- **85 produtos agrícolas**;
- **10 anos**, de 2016 a 2025.

## Banco de dados

O Data Mart foi implementado no **MySQL 8**.

Banco utilizado:

`sad_producao_agricola`

## Aplicação OLAP

A aplicação OLAP foi desenvolvida no **Microsoft Power BI** e organizada em três páginas principais.

### Visão Geral

Apresenta:

- área plantada acumulada;
- área colhida acumulada;
- valor da produção;
- quantidade de municípios;
- quantidade de produtos;
- evolução do valor da produção;
- ranking de municípios;
- principais produtos por valor da produção.

### Análise da Produção

Permite analisar uma cultura específica por meio de:

- quantidade produzida;
- rendimento;
- área colhida;
- unidades de medida;
- evolução da produção;
- evolução do rendimento;
- ranking de municípios produtores.

### Análise Econômica e Territorial

Apresenta:

- município líder;
- produto líder;
- valor da produção;
- evolução econômica;
- ranking de municípios;
- ranking de produtos;
- distribuição territorial da produção agrícola em Pernambuco.

As páginas possuem filtros por **ano, município e produto**, possibilitando diferentes perspectivas de análise.

## Tecnologias utilizadas

- PAM/IBGE — SIDRA;
- CSV;
- Pentaho Data Integration — PDI 9.4;
- MySQL 8;
- Microsoft Power BI;
- DAX;
- GitHub.

## Estrutura do repositório

```text
SAD-Produção-Agrícola-PE/
│
├── dados/
│   ├── PAM_PE_2016_2025_original.csv
│   └── PAM_PE_2016_2025_tratado.csv
│
├── documentação/
│   ├── apresentação/
│   └── dicionário-dados/
│
├── etl/
│   ├── carga_dim_tempo.ktr
│   ├── carga_dim_municipio.ktr
│   ├── carga_dim_produto.ktr
│   └── carga_fato_producao.ktr
│
├── modelagem/
│   ├── modelo-relacional/
│   └── modelo-dimensional/
│
├── Power BI/
│   └── OLAP - SAD.pbit
│
└── README.md
```

## Etapas desenvolvidas

1. Planejamento;
2. Levantamento das necessidades;
3. Modelagem relacional e dimensional;
4. Projeto físico do banco de dados;
5. Extração, Transformação e Carga — ETL;
6. Aplicação OLAP e Painel de Bordo.

## Resultado

O projeto resultou em um Data Mart completo para análise da produção agrícola de Pernambuco, integrado a uma aplicação OLAP interativa que permite explorar os dados sob perspectivas temporal, geográfica e de produto.

## Autor

**Emerson Emanoel Alves Lacerda**

Bacharelado em Sistemas de Informação  
Universidade Federal Rural de Pernambuco — UFRPE/UAST
