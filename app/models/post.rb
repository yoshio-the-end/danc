class Post < ApplicationRecord
  validates :title, :content, presence: true
  mount_uploader :image, ImageUploader
  
  belongs_to :user

  def self.search(search)
    return Post.all unless search
    Post.where('content  LIKE(?)', "%#{search}%")
    Post.where('title  LIKE(?)', "%#{search}%")
  end
end
