class Micropost < ActiveRecord::Base
  attr_accessible :content, :title, :references
  belongs_to :user
  default_scope :order => 'microposts.created_at DESC'
  
  validates :user_id, :presence => true
end
