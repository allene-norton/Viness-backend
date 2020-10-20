class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :wine_id, :body, :username, :img
  belongs_to :user
  belongs_to :wine

  def username
    object.user.display_name
  end

  def img
    object.user.image
  end
end
