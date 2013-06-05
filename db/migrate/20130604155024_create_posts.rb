class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :category
      t.string  :title
      t.text    :description
      t.integer :price
      t.integer :item_key
      t.string  :email
    end
  end
end
