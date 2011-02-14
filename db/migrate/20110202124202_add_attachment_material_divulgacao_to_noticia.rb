class AddAttachmentMaterialDivulgacaoToNoticia < ActiveRecord::Migration
  def self.up
    add_column :noticias, :material_divulgacao_file_name, :string
    add_column :noticias, :material_divulgacao_content_type, :string
    add_column :noticias, :material_divulgacao_file_size, :integer
    add_column :noticias, :material_divulgacao_updated_at, :datetime
  end

  def self.down
    remove_column :noticias, :material_divulgacao_file_name
    remove_column :noticias, :material_divulgacao_content_type
    remove_column :noticias, :material_divulgacao_file_size
    remove_column :noticias, :material_divulgacao_updated_at
  end
end
