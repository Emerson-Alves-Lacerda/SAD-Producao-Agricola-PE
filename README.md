# SAD-Producao-Agricola-PE
Data Mart para análise da Produção Agrícola de Pernambuco utilizando dados da PAM/IBGE — 2016 a 2025.

# Análise da Produção Agrícola de Pernambuco

Projeto desenvolvido para a disciplina de Sistema de Apoio à Decisão (SAD).

## Sobre o projeto

O projeto tem como objetivo desenvolver um Data Mart para apoiar a análise da produção agrícola dos municípios de Pernambuco, permitindo acompanhar a evolução dos dados e realizar comparações entre municípios, culturas agrícolas e períodos.

## Fonte dos dados

- Pesquisa da Produção Agrícola Municipal (PAM)
- Instituto Brasileiro de Geografia e Estatística (IBGE)
- SIDRA - Tabela 5457
- Período analisado: 2016 a 2025
- Abrangência: municípios de Pernambuco

## Indicadores

- Área plantada ou destinada à colheita
- Área colhida
- Quantidade produzida
- Rendimento médio da produção
- Valor da produção

## Modelagem

O projeto utiliza a abordagem Bottom-Up para construção de um Data Mart específico de produção agrícola.

O modelo dimensional adotado é o Star Schema, composto por:

- DIM_TEMPO
- DIM_MUNICIPIO
- DIM_PRODUTO
- FATO_PRODUCAO

A granularidade definida é:

Produto agrícola × Município × Ano

## Tecnologias

- PAM/IBGE - SIDRA
- CSV
- Pentaho Data Integration (PDI)
- SGBD
- Microsoft Power BI

## Estrutura do repositório

- `dados/` - bases de dados original e tratada
- `documentacao/` - apresentação e documentação do projeto
- `modelagem/` - modelos relacional e dimensional
- `etl/` - processos de Extração, Transformação e Carga
- `powerbi/` - aplicação OLAP e painel desenvolvido no Power BI

## Autor

Emerson Emanoel Alves Lacerda

Bacharelado em Sistemas de Informação
