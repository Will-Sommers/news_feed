class Story < ActiveRecord::Base
  has_many :user_story
  has_many :users, :through => :user_story 
end
