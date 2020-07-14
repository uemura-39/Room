class Post < ApplicationRecord

  belongs_to :user
  has_many :comments
  has_many :likes

  # お気に入りされているか判定
  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

  validates :text, presence: true,length: { maximum: 200 }
  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
