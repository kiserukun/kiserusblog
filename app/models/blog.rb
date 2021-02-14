class Blog < ApplicationRecord
  validates :title,presence: true
  validates :image,presence: true
  validates :matter,presence: true

  belongs_to :user
  has_one_attached :image
  has_many :comments
  has_many :tags,through: :blog_tag_relations
  has_many :blog_tag_relations
end
