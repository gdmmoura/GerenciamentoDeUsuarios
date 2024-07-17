*** Settings ***
Resource    src/config.robot

*** Test Cases ***
Cadastrar Usuario

    [Documentation]    Cadastra um usuario de acordo com o json do arquivo config.robot

    Create Session    alias=${alias}     url=${url}
    
    ${response}    POST On Session    alias=${alias}     url=/usuarios       headers=${headers}    data=${dados}
    
    #A API me retorna o Id do usuário, armazeno na variavel  ${USER_ID} para posterior PUT e DELETE
    Set Global Variable    ${USER_ID}    ${response.json()['_id']}
    
    Delete All Sessions


Verifica se o usuario cadastrado existe

    [Documentation]    Verifica se usuario cadastrado existe 

    Create Session    alias=${alias}     url=${url}
    
    ${response}    GET On Session    alias=${alias}     url=/usuarios?_id=${USER_ID}    expected_status=200    headers=${headers}

    Set Global Variable    ${USER_ID}   ${response.json()['usuarios'][0]['_id']}
   
    Delete All Sessions


Atualiza a password do usuario
    
    [Documentation]    Atualiza a senha de acordo com o json de atualização

    Create Session    alias=${alias}     url=${url}    headers=${headers}

    ${response}    PUT On Session    alias=${alias}     url=/usuarios/${USER_ID}    expected_status=200   headers=${headers}    data=${dados_updated}

    Log To Console    ${response.json()}

    Delete All Sessions


Deleta o usuario criado

    [Documentation]    Deleta o usuario cadastrado
     
    Create Session    alias=${alias}     url=${url}    headers=${headers}
    
    ${response}    DELETE On Session    alias=${alias}     url=/usuarios/${USER_ID}    expected_status=200

    Log To Console    ${response.json()}

    Delete All Sessions
    