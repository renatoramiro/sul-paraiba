class AreaUsuarioController < ApplicationController
  before_filter :authenticate_user!
  def index
  end
  
  def noticias
  	@noticias = Noticia.all.reverse
  end

end
