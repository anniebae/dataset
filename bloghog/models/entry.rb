class Entry < ActiveRecord::Base
  belongs_to :users
  has_many :tags

  def tags
    self.post.scan(/#(\w+)/).flatten
  end
end