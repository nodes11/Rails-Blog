class AddUserRefToComments < ActiveRecord::Migration
  def change
    add_column :comments, :user, :integer
  end
end
