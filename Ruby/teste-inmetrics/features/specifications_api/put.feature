#language: pt

Funcionalidade: Editar Usuario
    Eu desejo alterar um usuario

    @alterar_usuario
    Cenario: AlterarUsuario
        Dado que eu deseje alterar alguns dados do usuario "408"
        Entao esse usuario devera ser atualizado com sucesso