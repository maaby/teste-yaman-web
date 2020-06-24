# frozen_string_literal: true

class TelaPagamento < SitePrism::Page

  element :btnContinuar,  "a[class='btn btn--primary btn--block']"
  element :resumoPedido,  "h2[class='summary-title']", match: :first
  
  def verificar_resumo_pedido
      btnContinuar.click
  end
  
  def verificar_texto
      wait_until_resumoPedido_visible(wait: 10)
      resumoPedido.text
  end
  
end