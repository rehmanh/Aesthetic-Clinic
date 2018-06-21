class RemoveComplaintFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :complaint
  end
end
