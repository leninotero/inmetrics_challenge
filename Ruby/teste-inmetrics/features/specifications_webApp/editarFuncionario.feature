#language: pt

Funcionalidade: Editar Funcionário
    Para poder acessar ao sistema de gestão de funcionários
    Sendo que devo estar devidamente logado como usuário
    Posso editar as informações de um funcionário

    @edita_funcionario
    Cenario: CadastroUsuario
        Dado que eu faço login no sistema com usuário "useradmtest5", a senha "pwd123"
        Quando eu acesso à pagina de gestão de funcionários
        E procuro pelo funcionário pelo cpf "897.792.524-01"
        Então altero as informações de nome para "Teste Editado", Cargo para "Analista Sênior" e Salário para "1030000"
        E devo ver a mensagem e sucesso "Informações atualizadas com sucesso"