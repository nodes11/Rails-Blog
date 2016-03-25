class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :body
      t.references :blog_post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
