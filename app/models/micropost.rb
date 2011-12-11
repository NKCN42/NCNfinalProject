class Micropost < ActiveRecord::Base
  attr_accessible :content, :title, :references
  belongs_to :user
end
