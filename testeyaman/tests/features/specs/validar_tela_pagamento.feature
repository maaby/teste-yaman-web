#language: pt
#Desenvolvimento guiado por comportamento (BDD)

Funcionalidade: Validar produto na tela de pagamento

Contexto:
    Dado que eu acesse a url do site shoestock
    Quando digito email e senha
    Então devo acessar site com sucesso
    
    @tela_pagamento
Cenário: Validar produto incluido na tela de pagamento 
    Dado que eu esteja na home
    Quando realizo a busca do produto
    E seleciono o produto
    Então produto é adicionado ao carrinho
    E sou direcionado para a tela de pagamento com sucesso