#language: pt
#Desenvolvimento guiado por comportamento (BDD)

Funcionalidade: Login Shoestock

@login
Cenário: Realizar login com sucesso

    Dado que eu acesse a url do site shoestock
    Quando digito email e senha
    Então devo acessar site com sucesso