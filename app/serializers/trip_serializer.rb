class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :location, :img_url, :username, :user_id, :likes, :created_at
  belongs_to :user
  has_many :comments

  def username
    object.user.username
  end

  def user_id
    object.user.id
  end

end
