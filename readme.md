<h1>Criação e gerenciamento de usuários via API com RobotFramework</h1>

Nesse repositório, estão exemplos de utilização do RobotFramework para comunicação de uma API REST, chamada ServeRest. O ServeRest é uma API que simula uma loja virtual.

Os Test Cases aqui no script serão para:
<ul>
    <li>Cadastrar um usuário</li>
    <li>Verificar se o usuário cadastrado existe</li>
    <li>Atualiza a senha do usuário cadastrado</li>
    <li>Deleta o usuário cadastrado</li>
</ul>

No diretório `/src`, encontra-se o arquivo `config.robot` que contém o json de dados para cadastrar e o de atualização do usuário que será usado no arquivo `main.robot`, além das variáveis que armazenam o alias, os headers e a url da API. 

Existem 4 test case nessa suite de testes com suas descrições auto-explicativas:

- Cadastrar Usuario
- Verifica se o usuario cadastrado existe
- Atualiza a password do usuario
- Deleta o usuario criado

Ao executar o teste via comando no terminal `robot -d ./logs main.robot`, é criado a pasta `logs` juntamente com os logs resultantes dos cenários executados.