#language: pt

Funcionalidade: Login
    Para poder gerenciar os cadastro de funcionários
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com usuario e senha

    @login_success
    Cenario: Acesso válido
        Dado que eu entro na pagina da inmrobo
        Quando eu faço o login com "useradmtest" e "pwd123"        
        Então devo ver a pagina de gestão de funcionários

    @login_notsuccess
    Cenario: Senha inválida
        Dado que eu entro na pagina da inmrobo
        Quando eu faço o login com "usertetsadam" e "abc123"
        Então devo ver a mensagem de alerta "Usuário ou Senha inválidos"