class RemoveImageFieldFromProcedures < ActiveRecord::Migration[5.1]
  def change
    remove_column :procedures, :image_file_name
  end
end
