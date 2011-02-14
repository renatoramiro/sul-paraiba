require 'test_helper'

class CategoriaTest < ActiveSupport::TestCase
  
  def test_validar_presenca_de_nome
  	categoria = Categoria.new
  	assert !categoria.save, "Salvou sem nome"
  end
  
  def test_validar_tamanho_maximo_de_nome
  	categoria = Categoria.new(:nome => '123456789012345678901234567890FALHA')
  	assert !categoria.save, "Salvou com 'nome' muito grande"
  end
end
