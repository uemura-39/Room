class Post < ApplicationRecord

  belongs_to :user
  has_many :comments
  has_many :likes

  validates :text, presence: true,length: { maximum: 200 }
  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
