Dado('que eu acesse a url do site shoestock') do
  visit '/'
  page.has_title? 'shoestock: Paixão por Sapatos | Loja de Calçados Online'
end
Quando('digito email e senha') do
  @login.logar
end
  
Então('devo acessar site com sucesso') do
  expect(page).to have_title 'shoestock: Paixão por Sapatos | Loja de Calçados Online'
end