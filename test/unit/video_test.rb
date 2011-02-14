require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  
  def test_validar_presenca_de_titulo
  	video = Video.new(:url => 'qwer')
  	assert !video.save, "Video salvo sem titulo"
  end
  
  def test_validar_tamanho_maximo_de_titulo
  	video = Video.new(:url => 'qwer', :titulo => '1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890FALHA')
  	assert !video.save, "Video salvo com titulo muito grande"
  end
  
  def test_validar_presenca_de_url
  	video = Video.new(:titulo => 'Teste')
  	assert !video.save, "Video salvo sem url"
  end
end
