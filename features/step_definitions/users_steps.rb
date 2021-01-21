Dado("o endereço da API para manter o cadastro de usuário") do
    $uri_base = "https://60077ab7309f8b0017ee4826.mockapi.io/api/v1/users"
end

Quando("realizar uma requisição para cadastrar um usuário") do
    $response = HTTParty.post($uri_base, :body => {"nome":@nome, "agencia":@agencia, "conta":@conta})
end

Então("a API irá retornar os dados do cadastro do usuário respondendo com código {int}") do |int|
    puts "response code: #{$response.code}"
    puts "response body: #{$response.body}"
end