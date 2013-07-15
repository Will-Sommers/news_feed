class User < ActiveRecord::Base
  has_many :user_stories
  has_many :stories, :through => :user_stories
end
