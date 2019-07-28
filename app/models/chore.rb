class Chore < ApplicationRecord
  belongs_to :user
  belongs_to :occupant, optional: true

end
