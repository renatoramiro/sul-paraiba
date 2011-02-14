class Blog < ActiveRecord::Base
  validates :titulo, :presence => true, :length => {:maximum => 100}
  validates :texto, :presence => true
  validates :autor, :presence => true, :length => {:maximum => 70}
  validates :categoria_id, :presence => true
  
  has_attached_file :imagem, :styles => {:medium => '300x300', :thumb => '100x100'}
  
  belongs_to :categoria
end
