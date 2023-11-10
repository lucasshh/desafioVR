Dado('o endereco da API para consulta') do
    $url_base = "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"
  end
  
  Quando('Enviar uma requisicao') do
    $response = HTTParty.get($url_base)
    
  end
  
  Entao('a API retornara o codigo {int}') do |int|

    # Verifica se o código de resposta é igual ao esperado
  if $response.code == 200
    puts "O código de resposta é #{200}."
  else
    raise "Erro: O código de resposta é #{$response.code}, mas esperava-se #{200}."
  end
end

  

  Entao('retorna as informacoes da chave {string}') do |string|
    type_of_establishment_array = $response["typeOfEstablishment"]

    # Verifica se a chave existe e se o array não está vazio
    unless type_of_establishment_array && !type_of_establishment_array.empty?
      raise "A chave 'typeOfEstablishment' não foi encontrada ou está vazia no objeto de resposta."
    end
  
    # Obter elemento aleatorio
    random_type_of_establishment = type_of_establishment_array.sample
  
    # Imprima as informações desejadas
    puts "Chave Aleatória: #{random_type_of_establishment['key']}"
    puts "Nome Aleatório: #{random_type_of_establishment['name']}"
    puts "Label Aleatório: #{random_type_of_establishment['label']}"
  end
