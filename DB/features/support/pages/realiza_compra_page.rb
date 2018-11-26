class Realiza_compra
  include RSpec::Matchers
  include Capybara::DSL




  def cadastrar_dados_pessoais_pessoa_fisica_responsivo
      find(EL['nome']).set("")
      find(EL['sobrenome']).set("")
      find(EL['senha']).set("")
      find(EL['empresa']).set("")
      find(EL['endereco']).set("")
      find(EL['cidade']).set("")
      find(EL['estado']).set("")
      find(EL['cep']).set("")
      find(EL['telefone_celular']).set("")
      find(EL['endereco_recado']).set("")
end


  def escolher_produto
    all(EL['img1'])[0].hover
    all(EL['img2'])[0].click
  end



def clica_elemento
  find(elemento).click
end


def preenche_elemento
  find(EL['email']).set("teste@db.com.br")
end

end
