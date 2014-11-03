class Entry < ActiveRecord::Base
  belongs_to :users
  has_many :tags
end