# Desafio automaçao Backend

Criar um cenário de teste, utilizando Cucumber+Ruby+HTTParty, que valide que o JSON retornado pelo serviço possua a chave "typeOfEstablishment" e print, aleatoriamente, um desses tipos de estabelecimento. 


## Configuração

Certifique-se de ter as seguintes dependências instaladas:

- Ruby
- Cucumber
- HTTParty
- RSpec

Instale as dependências usando o bundler:

```bash
bundle install

O arquivo env.rb na pasta support é utilizado para configurações e inicialização antes da execução dos testes.
O arquivo validar_endpoint_vrpat.rb em step_definitions contém os passos dos cenários de teste.

## Executando os Testes

Para executar os testes, use o seguinte comando:  cucumber
Isso executará os cenários de teste definidos nos arquivos .feature no diretório features.

Estrutura do Projeto

features: Contém os arquivos .feature com os cenários de teste escritos em Gherkin.
step_definitions: Contém os arquivos de passos escritos em Ruby correspondentes aos cenários de teste.

