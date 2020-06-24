#language: pt
#Desenvolvimento guiado por comportamento (BDD)

Funcionalidade: Incluir produto no carrinho

Contexto: 
    Dado que eu acesse a url do site shoestock
    Quando digito email e senha
    Então devo acessar site com sucesso

@incluir_produto
Cenário: Incluir produto no carrinho com sucesso
    Dado que eu esteja na home
    Quando realizo a busca do produto
    E seleciono o produto
    Então produto é adicionado ao carrinho
