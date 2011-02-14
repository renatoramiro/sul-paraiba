class Video < ActiveRecord::Base
  validates :titulo, :presence => true, :length => {:maximum => 100}
  validates :url, :presence => true  
end
