# Apresentação do Projeto

Esta pasta contém as apresentações desenvolvidas para o projeto de Sistemas de Apoio à Decisão — SAD.

## Arquivos

- `Projeto - Etapas 1, 2 e 3.pptx` — versão utilizada durante as etapas iniciais do projeto.
- `Projeto - SAD.pptx` — apresentação final do projeto.

## Conteúdo da apresentação final

A apresentação descreve o desenvolvimento completo do Data Mart para análise da produção agrícola de Pernambuco.

As etapas apresentadas são:

### Etapa 1 — Planejamento
Definição do objetivo, escopo, arquitetura tecnológica, processo de desenvolvimento, abordagem Bottom-Up e usuários.

### Etapa 2 — Levantamento das Necessidades
Definição das consultas de apoio à decisão, indicadores da produção agrícola e trabalhos relacionados.

### Etapa 3 — Modelagem
Apresentação do modelo relacional, modelo dimensional, granularidade, dimensões, métricas da tabela fato, esquema estrela e estimativa de registros.

### Etapa 4 — Projeto Físico do Banco de Dados
Implementação do Data Mart no MySQL.

### Etapa 5 — Extração, Transformação e Carga
Descrição dos processos ETL desenvolvidos no Pentaho Data Integration para carregar:

- DIM_TEMPO;
- DIM_MUNICIPIO;
- DIM_PRODUTO;
- FATO_PRODUCAO.

### Etapa 6 — Aplicação OLAP e Painel de Bordo
Apresentação das consultas OLAP implementadas no Power BI:

- Visão Geral;
- Análise da Produção;
- Análise Econômica e Territorial;
- Painel de Bordo.

## Fonte dos dados

Pesquisa da Produção Agrícola Municipal — PAM/IBGE, Tabela SIDRA 5457.

Período: 2016 a 2025.

## Ferramentas utilizadas

- Pentaho Data Integration (PDI);
- MySQL;
- Microsoft Power BI;
- GitHub.
