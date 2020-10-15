#language: pt

Funcionalidade: Cadastrar Usuário
    Para poder acessar ao site de gestão de funcionários
    Sendo que devo ciar uma conta de usuário
    Posso logar no sistema com usuario e senha válido

    @cadastro_usuario
    Cenario: CadastroUsuario
        Dado que eu acesso na pagina da inmrobo        
        Quando cadastro um usuário com nome de usuario "useradmtest5", a senha "pwd123" e confirmo a mesma senha
        Então devo ver a pagina de login