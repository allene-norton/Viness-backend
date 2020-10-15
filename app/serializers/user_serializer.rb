class UserSerializer < ActiveModel::Serializer
  attributes :id, :uid, :email, :display_name, :first_name, :last_name, :image, :location

  has_many :wines
  has_many :comments
end
