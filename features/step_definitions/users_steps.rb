Dado("o endereço da API para manter o cadastro de usuário") do
    #$uri_base = "https://60077ab7309f8b0017ee4826.mockapi.io/api/v1/users"
    #Instanciado pela classe "Users", na pasta "pages".
end

Quando("realizar uma requisição para cadastrar um usuário") do
    #Subistituído pela implementação na classe "Users".
    #$response = HTTParty.post($uri_base, :body => {"nome":@nome, "agencia":@agencia, "conta":@conta})
    $response = @users.postUsers
end

Então("a API irá retornar os dados do cadastro do usuário respondendo com código {int}") do |int|
    #Expect do status code e message
    expect($response.code).to eq(201)
    Kernel.puts "Response Code: #{$response.code}"
    expect($response.message).to eq ("Created")
    Kernel.puts "Response Message: #{$response.message}"
    
    #Imprime os atributos da requisição
    Kernel.puts "ID     : #{$response["id"]}"
    Kernel.puts "Nome   : #{$response["nome"]}"
    Kernel.puts "Agência: #{$response["agencia"]}"
    Kernel.puts "Conta  : #{$response["conta"]}"
    #Kernel.puts "response body: #{$response.body}"
end