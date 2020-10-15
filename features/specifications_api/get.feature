#language: pt

Funcionalidade: Listar Usuario
    Eu quero vizualizar os usuarios cadastrados na api

    @get_usuario
        Cenario: VizualizarUsuarioUnico
        Dado que eu faça um GET no endpoint usuarios com id "408"    
        Entao o retorno dele será todos os usuarios pesquisados    