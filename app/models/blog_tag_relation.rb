class BlogTag

    include ActiveModel::Model
    attr_accessor :message, :name
  
    with_options presence: true do
      validates :message
      validates :key_name
    end
  
    def save
      blog = Blog.create(message: message)
      tag = Tag.create(key_name: key_name)
  
      BlogTagRelation.create(blog_id: blog.id, tag_id: tag.id)
    end
  

  end

  
  belongs_to :blog
  belongs_to :tag
end
