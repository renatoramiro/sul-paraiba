class Noticia < ActiveRecord::Base
  validates :titulo, :presence => true, :length => {:maximum => 100}
  validates :autor, :presence => true, :length => {:maximum => 70}
  validates :texto, :presence => true
  
  has_attached_file :material_divulgacao, :styles => {:medium => "300x300", :thumb => "100x100"}
end
