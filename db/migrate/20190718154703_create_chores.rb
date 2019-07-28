class CreateChores < ActiveRecord::Migration[5.2]
  def change
    create_table :chores do |t|
      t.string :title
      t.boolean :complete, default: false
      t.string :description
      t.datetime :due
      t.belongs_to :user
      t.belongs_to :occupant

    end
  end
end
