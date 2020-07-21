class Post < ApplicationRecord

  belongs_to :user
  has_many :comments
  has_many :likes
  has_many :post_category_relations
  has_many :categories, through: :post_category_relations, dependent: :destroy

  # お気に入りされているか判定
  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

  def self.search(search)
    if search
      Post.where('text LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end

  validates :text, presence: true,length: { maximum: 200 }
  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
