class Valida_compra
  include RSpec::Matchers
  include Capybara::DSL




def valida_existencia_elemento(elemento)
   if assert_selector(elemento, wait:15)
     p "Elemento (#{elemento}) localizado com sucesso na página"
   else
     raise "Elemento (#{elemento}) não foi localizado na página"
   end
  end
end
