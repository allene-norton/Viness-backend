class UserSerializer < ActiveModel::Serializer
  attributes :id, :uid, :email, :first_name, :last_name, :image, :location

  has_many :wines
end
