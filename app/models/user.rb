class User < ApplicationRecord
  has_secure_password
  after_create do |user|
    Occupant.create!(first_name: user.first_name, last_name: user.last_name, relationship: "Account Holder", user_id: user.id)
  end
  has_many :occupants
  has_many :chores
  has_many :grocery_items
  validates :username, uniqueness: {
    case_sensitive: false
  }
end
