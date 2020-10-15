#language: pt

Funcionalidade: Cadastrar Usuario
    Eu desejo criar novo Usuario na empresa

    @post_usuario
    Cenario: CriarUsuario
        Dado que eu passe os dados do usuario
        Quando eu realizo a açao do post na api
        Entao um novo usuario é cadastrado com sucesso na base