class AddUserNumToComments < ActiveRecord::Migration
  def change
    add_column :comments, :userNum, :integer
  end
end
