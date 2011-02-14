require 'test_helper'

class NoticiaTest < ActiveSupport::TestCase
  
  def test_validar_presenca_de_titulo
  	noticia = Noticia.new(:autor => 'Autor', :texto => 'Meu texto')
  	assert !noticia.save, "Noticia salva sem titulo"
  end
  
  def test_validar_tamanho_maximo_de_titulo
  	noticia = Noticia.new(:titulo => "1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890FALHA", :autor => 'Autor', :texto => 'Meu texto')
  	assert !noticia.save, "Noticia salva com titulo muito grande."
  end
  
  def test_validar_presenca_de_autor
  	noticia = Noticia.new(:titulo => 'Teste', :texto => 'Meu texto')
  	assert !noticia.save, "Noticia salva sem autor"
  end
  
  def test_validar_tamanho_maximo_de_autor
  	noticia = Noticia.new(:titulo => 'Teste', :texto => 'Meu texto', :autor => '1234567890123456789012345678901234567890123456789012345678901234567890FALHA')
  	assert !noticia.save, "Noticia salva com autor muito grande."
  end
  
  def test_validar_presenca_de_texto
  	noticia = Noticia.new(:titulo => 'Teste', :autor => 'Autor')
  	assert !noticia.save, "Noticia salva sem texto"
  end
end
