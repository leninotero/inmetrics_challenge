#language: pt

Funcionalidade: Listar Todos Usuarios
    Eu quero vizualizar os usuarios cadastrados na api

    @get_todos_usuarios
        Cenario: VizualizarUsuarios
        Dado que eu faça um GET no endpoint usuarios
        Entao o retorno dele será todos os usuarios cadastrados