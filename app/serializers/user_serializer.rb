class UserSerializer < ActiveModel::Serializer
  has_many :occupants
  has_many :chores
  has_many :grocery_items
  
  attributes :id, :username, :first_name, :last_name, :occupants, :grocery_items
end
