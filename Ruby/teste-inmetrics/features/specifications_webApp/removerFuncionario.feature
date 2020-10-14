#language: pt

Funcionalidade: Remover Funcionário
    Para poder acessar ao sistema de gestão de funcionários
    Sendo que devo estar devidamente logado como usuário
    Posso deletar o cadastro de um funcionário

    @remove_funcionario
    Cenario: RemoveUsuario
        Dado que eu faço login no sistema com usuário "useradmtest5", a senha "pwd123"
        Quando eu acesso à pagina de gestão de funcionários
        E procuro pelo funcionário pelo cpf "897.792.524-01" a ser deletado
        Então devo ver a mensagem e sucesso "Funcionário removido com sucesso"