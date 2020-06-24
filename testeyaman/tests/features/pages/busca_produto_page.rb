# frozen_string_literal: true

class BuscaProduto < SitePrism::Page
  element :pesquisa_produto, '#search-input'
  element :sapatos,           "a[title'Sapatos']"
  element :botas,             "a[title='Botas']"
  element :validar_msg,       "h1[class='search-query']"
  element :modelo_feminino,   'label[for="genero-feminino"]'
  element :tipo_produto,      'label[for="tipo-de-produto-botas"]'
  
  def realizar_busca
      pesquisa_produto.click
      pesquisa_produto.set'bota'
      pesquisa_produto.send_keys(:enter)
      sleep 2
  end
  
  def selecionar_modelo
      modelo_feminino.click
      tipo_produto.click
  end
  
  def verificar_msg
      wait_until_validar_msg_visible(wait: 30)
      validar_msg.text
  end
  
  end
    