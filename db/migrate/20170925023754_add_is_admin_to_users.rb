class AddIsAdminToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :is_admin, :boolean, default: false, null: false
  end
end
