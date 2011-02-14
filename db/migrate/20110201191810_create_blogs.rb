class CreateBlogs < ActiveRecord::Migration
  def self.up
    create_table :blogs do |t|
      t.string :titulo, :null => false, :limit => 100
      t.text :texto, :null => false
      t.string :autor, :null => false, :limit => 70
      t.integer :categoria_id

      t.timestamps
    end
    add_index(:blogs, :categoria_id)
  end

  def self.down
    drop_table :blogs
  end
end
