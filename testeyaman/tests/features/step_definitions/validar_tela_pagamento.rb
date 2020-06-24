Então('sou direcionado para a tela de pagamento com sucesso') do
    @tela_pagamento.verificar_resumo_pedido
    expect(@tela_pagamento.verificar_texto).to eq('Pagamento')
end