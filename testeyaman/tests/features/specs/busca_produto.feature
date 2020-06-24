#language: pt
#Desenvolvimento guiado por comportamento (BDD)

Funcionalidade: Realizar uma busca de produto

Contexto: 
    Dado que eu acesse a url do site shoestock
    Quando digito email e senha
    Então devo acessar site com sucesso

@busca_produto
Cenário: Realizar busca de um produto

    Dado que eu esteja na home
    Quando realizo a busca do produto
    Então devo obter resultado com sucesso.

