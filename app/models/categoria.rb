class Categoria < ActiveRecord::Base
  validates :nome, :presence => true, :length => {:maximum => 30}
  
  has_one :blog
end
