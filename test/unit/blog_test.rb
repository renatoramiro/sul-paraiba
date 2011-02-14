require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  def test_should_not_save_without_titulo
  	blog = Blog.new
  	assert !blog.save, "Postagem salva sem titulo."
  end
  
  def test_nao_deve_salvar_titulo_muito_grande
  	blog = Blog.new(:titulo => '1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890FALHA')
  	assert !blog.save
  end
  
  def test_validar_presenca_de_texto
  	blog = Blog.new(:titulo => 'Teste', :autor => 'Admin')
  	assert !blog.save, "Salvou sem texto"
  end
  
  def test_validar_presenca_de_autor
  	blog = Blog.new(:titulo => 'Teste', :texto => 'Meu texto')
  	assert !blog.save, 'Salvou sem autor'
  end
  
  def test_validar_tamanho_maximo_de_autor
  	blog = Blog.new(:titulo => 'Teste', :texto => 'Meu texto', :autor => '12345678901234567890123456789012345678901234567890123456789012345678901234567890')
  	assert !blog.save, 'Salvou com autor 80 caracteres'
  end
  
  def test_validar_presenca_de_categoria_id
  	blog = Blog.new(:titulo => 'Teste', :texto => 'Meu texto', :autor => 'autor')
  	assert !blog.save, "Salvou sem 'categoria_id'"
  end
  
  def test_validar_com_presenca_de_categoria_id
  	blog = Blog.new(:titulo => 'Teste', :texto => 'Meu texto', :autor => 'autor', :categoria_id => 1)
  	assert blog.save, "Nao salvou mesmo com 'categoria_id'"
  end
end
