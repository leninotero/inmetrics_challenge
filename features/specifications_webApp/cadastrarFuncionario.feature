#language: pt

Funcionalidade: Cadastrar Funcionário
    Para poder acessar ao sistema de gestão de funcionários
    Sendo que devo estar devidamente logado como usuário
    Posso cadastrar um novo funcionário

    @cadastro_funcionario
    Cenario: CadastroFuncionario
        Dado que eu faço login no sistema com usuário "useradmtest5", a senha "pwd123"
        Quando eu acesso à pagina de gestão de funcionários
        E eu acesso ao cadastro de novo funcionários
        Então preencho o nome "teste", cpf "897.792.524-01", seleciono sexo "Masculino", digito a data de admissão "12122019", cargo "Analista", salário "2500" e seleciono "clt" 
        E devo ver a mensagem e sucesso "Usuário cadastrado com sucesso"