*** Settings ***
Library    RequestsLibrary

*** Variables ***

#variaveis de comunicação com a API
${alias}        serverest-usuarios
&{headers}      Content-Type=application/json
${url}          https://serverest.dev/


#------------------------------------------------


#dados para cadastro
${dados}    {"nome": "Gustavo de Moura", "email": "gjmoura721@gmail.com", "password": "teste", "administrador": "true"}

#variável global para armazenar o id do usuario do retorno do POST
${USER_ID}

#dados para serem atualizados com o PUT
${dados_updated}    {"nome": "Gustavo de Moura", "email": "gjmoura721@gmail.com", "password": "abcef", "administrador": "true"}
