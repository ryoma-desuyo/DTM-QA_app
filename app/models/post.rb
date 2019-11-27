class Post < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :delete_all
  has_many :post_tag_relations, dependent: :delete_all
  has_many :tags, through: :post_tag_relations 

  validates :title, presence: true, length: { maximum: 20 }
  validates :body, presence: true, length: { maximum: 1000 }

  mount_uploader :image, ImagesUploader
  mount_uploader :video, VideosUploader

end
