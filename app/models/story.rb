class Story < ActiveRecord::Base
  has_many :users, :through => :user_story 
end
