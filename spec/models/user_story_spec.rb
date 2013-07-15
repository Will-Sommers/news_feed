require 'spec_helper'

describe Story do
  it { should have_many(:users).through(:user_stories) }

  it "should have a url"  do
    new_story = Story.create(:url => "http://www.ladeda.com")
    new_story.url.should == "http://www.ladeda.com"
  end
  
  it "should have a author"  do
    new_story = Story.create(:author => "Martha Author")
    new_story.author.should == "Martha Author"
  end
end

