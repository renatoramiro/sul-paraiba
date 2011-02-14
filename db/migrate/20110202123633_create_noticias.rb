class CreateNoticias < ActiveRecord::Migration
  def self.up
    create_table :noticias do |t|
      t.string :titulo, :null => false, :limit => 100
      t.string :autor, :null => false, :limit => 70
      t.text :texto, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :noticias
  end
end
