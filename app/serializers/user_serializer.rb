class UserSerializer < ActiveModel::Serializer
  has_many :occupants
  has_many :chores
  has_many :grocery_items
  
  attributes :id, :username, :avatar, :first_name, :last_name, :occupants
end
