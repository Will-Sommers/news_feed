class Version < ActiveRecord::Base
  belongs_to :story

  validates_presence_of :content

end
