require 'bcrypt'

class User < ActiveRecord::Base
  has_many :entries
  include BCrypt

  def tags
    self.post.scan(/#(\w+)/).flatten
  end

  def password
    Password.new(self.password_hash)
  end

  def password=(new_password)
    self.password_hash = Password.create(new_password)
  end
end



# def password
#   @password ||= Password.new(self.password_hash)
# end

# def password=()