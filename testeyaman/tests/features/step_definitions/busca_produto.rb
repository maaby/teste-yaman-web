Dado('que eu esteja na home') do
  page.has_title? 'shoestock: Paixão por Sapatos | Loja de Calçados Online'
end
 
Quando('realizo a busca do produto') do
   @busca_produto.realizar_busca
   @busca_produto.selecionar_modelo
end
 
Então('devo obter resultado com sucesso.') do
expect(@busca_produto.verificar_msg).to eq("RESULTADOS DE BUSCA PARA \"BOTA\"")
end