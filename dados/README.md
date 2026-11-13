# Dados

Esta pasta contém os arquivos de dados utilizados no desenvolvimento do projeto de Sistemas de Apoio à Decisão — SAD.

## Arquivos

- `PAM_PE_2016_2025_original.csv` — arquivo original obtido a partir da Pesquisa da Produção Agrícola Municipal (PAM/IBGE).
- `PAM_PE_2016_2025_tratado.csv` — versão tratada e preparada para utilização nos processos ETL.

## Fonte dos dados

Os dados foram obtidos na Pesquisa da Produção Agrícola Municipal — PAM, disponibilizada pelo IBGE por meio do sistema SIDRA.

**Tabela utilizada:** SIDRA 5457  
**Abrangência:** municípios de Pernambuco  
**Período:** 2016 a 2025

## Indicadores utilizados

- Área plantada ou destinada à colheita;
- Área colhida;
- Quantidade produzida;
- Rendimento médio da produção;
- Valor da produção.

## Tratamento dos dados

O arquivo tratado foi organizado de forma a permitir sua utilização nos processos de Extração, Transformação e Carga desenvolvidos no Pentaho Data Integration.

Foram preservadas as unidades específicas dos produtos e tratados valores indisponíveis, nulos e situações particulares existentes na base original.
