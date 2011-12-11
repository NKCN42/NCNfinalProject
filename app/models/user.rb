class User < ActiveRecord::Base
  attr_accessible :username
  validates :username, :presence => true
  #has_many :microposts
  def self.authenticate(username, submitted_password)
    user = find_by_username(username)
    return user
  end
    
end
