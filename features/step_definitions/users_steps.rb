Dado("o endereço da API para manter o cadastro de usuário") do
    #Instanciado pela classe "Users" (pages).
end

# -- Cenário 01: Cadastrar Usuário --
Quando("realizar uma requisição para cadastrar um usuário") do
    #Implementação na classe "Users" (pages).
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
    $id = $response["id"]
    
end

# -- Cenário 02: Consultar Usuário --
Quando('realizar uma requisição para consultar um usuário passando o ID') do
    $get = @users.getUsers($id)
end

Então('a API irá retornar os dados da consulta ao usuário respondendo com código {int}') do |int|
    #Expect do status code, message e retorno da requisição
    expect($get.code).to eq(int)
    expect($get.message).to eq("OK")
    expect($get["id"]).to eq($response["id"])
    
    Kernel.puts "ID         : #{$get["id"]}"
    Kernel.puts "Nome       : #{$get["nome"]}"
    Kernel.puts "Agência    : #{$get["agencia"]}"
    Kernel.puts "Conta      : #{$get["conta"]}"
    Kernel.puts "Status Code: #{$get.code}"

end

# -- Cenário 03: Alterar Usuário --
Quando('realizar uma requisição para alterar um usuário') do
    $put = @users.putUsers($get["id"])
end

Então('a API irá retornar os dados do usuário alterados respondendo com código {int}') do |int|
    expect($put.code).to eq(int)
    expect($put.message).to eq("OK")
    expect($put["id"]).to eq($response["id"])

    Kernel.puts "ID         : #{$put["id"]}"
    Kernel.puts "Nome       : #{$put["nome"]}"
    Kernel.puts "Agência    : #{$put["agencia"]}"
    Kernel.puts "Conta      : #{$put["conta"]}"
    Kernel.puts "Status Code: #{$put.code}"

end

# -- Cenário 04: Excluir Usuário --
Quando('realizar uma requisição para excluir um usuário') do
    $delete = @users.deleteUsers($put["id"])
end

Então('a API irá retornar os dados da exclusão do usuário respondendo com código {int}') do |int|
    expect($delete.code).to eq(int)
    expect($delete.message).to eq("OK")

    Kernel.puts "ID         : #{$delete["id"]}"
    Kernel.puts "Nome       : #{$delete["nome"]}"
    Kernel.puts "Agência    : #{$delete["agencia"]}"
    Kernel.puts "Conta      : #{$delete["conta"]}"
    Kernel.puts "Status Code: #{$delete.code}"

end
