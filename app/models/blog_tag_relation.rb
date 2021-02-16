class BlogTag

    include ActiveModel::Model
    attr_accessor :message, :name
  
    with_options presence: true do
      validates :message
      validates :name
    end
  
    def save
      tweet = Tweet.create(message: message)
      tag = Tag.create(name: name)
  
      TweetTagRelation.create(tweet_id: tweet.id, tag_id: tag.id)
    end
  
  end
  belongs_to :blog
  belongs_to :tag
end
