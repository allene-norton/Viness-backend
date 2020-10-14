class WineSerializer < ActiveModel::Serializer
  attributes :id, :spn_id, :title, :averageRating, :description, :imageUrl, :link, :price, :ratingCount, :score

  has_many :comments
end
