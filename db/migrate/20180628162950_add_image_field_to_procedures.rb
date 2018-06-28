class AddImageFieldToProcedures < ActiveRecord::Migration[5.0]
  def change
    add_column :procedures, :image_file_name, :string, default: ""
  end
end
