class Story < ActiveRecord::Base
  has_many :user_stories
  has_many :users, :through => :user_stories
end
