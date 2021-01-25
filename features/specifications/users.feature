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

Cenário: Consultar Usuário
    Dado o endereço da API para manter o cadastro de usuário
    Quando realizar uma requisição para consultar um usuário passando o ID
    Então a API irá retornar os dados da consulta ao usuário respondendo com código 200

Cenário: Alterar Usuário
    Dado o endereço da API para manter o cadastro de usuário
    Quando realizar uma requisição para alterar um usuário
    Então a API irá retornar os dados do usuário alterados respondendo com código 200

Cenário: Excluir Usuário
    Dado o endereço da API para manter o cadastro de usuário
    Quando realizar uma requisição para excluir um usuário
    Então a API irá retornar os dados da exclusão do usuário respondendo com código 200
