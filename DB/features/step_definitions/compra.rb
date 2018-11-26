Dado("que acesso a home {string}") do |string|
  visit(LINKS['My Store'])
end

Dado("realizo a compra") do
  @paginaProduto.escolher_produto
  @paginaProduto.clica_elemento(EL['botao_checkout'])
  @paginaProduto.clica_elemento(EL['botao_checkout_1'])
  @paginaProduto.preenche_elemento
  @paginaProduto.cadastrar_dados_pessoais_pessoa_fisica_responsivo
  @paginaProduto.clica_elemento(EL['botao_registro'])
  @paginaProduto.clica_elemento(EL['botao_fazer_checkout'])
  @paginaProduto.clica_elemento(EL['checkout_final'])
  @paginaProduto.clica_elemento(EL['termo_serviço'])
end

Quando("escolho uma forma de pagamento") do
  @paginaEntrega.valida_existencia_elemento(EL['valida_valor'])
  @paginaProduto.clica_elemento(EL['metodo_pagamento'])
end

Então("finalizo a compra com sucesso") do
  @paginaProduto.clica_elemento(EL['confirmar_pedido'])
  @paginaEntrega.valida_existencia_elemento(EL['compra_finalizada'])
end
