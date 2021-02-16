class Tag < ApplicationRecord
  has_many :blog_tag_relations
  has_many :blogs,through: :blog_tag_relations

  validates :key_name, uniqueness: true
end
