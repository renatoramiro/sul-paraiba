class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.string :titulo, :limit => 100
      t.string :url, :null => false
      t.text :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :videos
  end
end
