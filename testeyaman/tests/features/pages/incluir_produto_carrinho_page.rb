# frozen_string_literal: true

class IncluirProduto < SitePrism::Page

   element :botapreta,     "div[class='item-card__images']", match: :first
   element :tamanho,       "a[data-size='size-34']"
   element :btnComprar,    "button[id='buy-button-now']"
   element :verificarTitulo,  "h1[class='cart__title']", match: :first
  
  
   def selecionar_produto
      botapreta.click
      tamanho.click
      btnComprar.click
  end
  
   def validar_texto
      wait_until_verificarTitulo_visible(wait: 30)
      verificarTitulo.text
   end    
     
  
end
  