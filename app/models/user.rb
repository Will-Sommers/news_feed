class User < ActiveRecord::Base
  has_many :user_story
  has_many :stories, :through => :user_story 
end
