class Occupant < ApplicationRecord
  belongs_to :user
  has_many :chores, through: :user

  def chores
    return super.select { |chore| chore.occupant_id === self.id}
  end

end
