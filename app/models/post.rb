class Post < ApplicationRecord
  serialize :tags, Array

  def self.all_cached
    Rails.cache.fetch('Post.all') { all.to_a }
  end 

end
