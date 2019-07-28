class CreateOccupants < ActiveRecord::Migration[5.2]
  def change
    create_table :occupants do |t|
      t.string :first_name
      t.string :last_name
      t.string :relationship
      t.belongs_to :user
    end
  end
end
