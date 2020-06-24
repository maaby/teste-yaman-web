Quando('seleciono o produto') do
  @incluir_produto.selecionar_produto
end
  
Então('produto é adicionado ao carrinho') do
  expect(@incluir_produto.validar_texto).to eq('Meu carrinho')
end