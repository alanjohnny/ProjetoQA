#language:pt
@users 

Funcionalidade: Manter dados de usuário fazendo uso da API
Como um usuário do sistema
Eu quero realizar as requisições na API
A fim de manipular as informações do cadastro de usuário

Cenário: Cadastrar Usuário
    Dado o endereço da API para manter o cadastro de usuário
    Quando realizar uma requisição para cadastrar um usuário
    Então a API irá retornar os dados do cadastro do usuário respondendo com código 201