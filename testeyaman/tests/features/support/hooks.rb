Before do
  page.driver.browser.manage.window.maximize
  
  @login = Login.new
  @busca_produto = BuscaProduto.new
  @incluir_produto = IncluirProduto.new
  @tela_pagamento = TelaPagamento.new
end

After do |scenario|
  time = Time.now.strftime('%Y_%m_%d_%Y_%H_%M_%S_')
  scenario_name = time + scenario.name.gsub(/\s+/, '_').tr('/', '_').tr(',', '').tr('(', '').tr(')', '').tr('#', '')

  if scenario.failed?
    get_screen_shoot(scenario_name.downcase!, 'Falhou')
    Kernel.puts '#===========================================================#'
    Kernel.puts "Scenario:: #{scenario.name}"
    Kernel.puts '#===========================================================#'
  else
      get_screen_shoot(scenario_name.downcase!, 'passou')
  end

end

def get_screen_shoot(nome_arquivo, resultado)
  caminho_arquivo = "report/test#{resultado}"
  picture = "#{caminho_arquivo}/#{nome_arquivo}.png"
  page.save_screenshot(picture)
  embed(picture, 'image/png', 'Visualizar')
end