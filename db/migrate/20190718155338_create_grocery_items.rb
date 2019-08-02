class CreateGroceryItems < ActiveRecord::Migration[5.2]
  def change
    create_table :grocery_items do |t|
      t.string :category
      t.string :title
      t.string :image
      t.belongs_to :user

    end
  end
end
