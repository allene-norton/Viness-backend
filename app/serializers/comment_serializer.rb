class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :wine_id, :body
end
