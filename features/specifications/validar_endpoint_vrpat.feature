# language: pt

Funcionalidade: Realizar GET para obter dados do estabelecimento
Como usuario quero enviar uma requisicao
A fim de obter informacoes de um estabelecimento

Cenario: Realizar GET no endpoint VRPAT
    Dado o endereco da API para consulta
    Quando Enviar uma requisicao
    Entao a API retornara o codigo 200
    E retorna as informacoes da chave "typeOfEstablishment"