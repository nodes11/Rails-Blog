class AddIsAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :isAdmin, :integer
  end
end
