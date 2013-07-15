require 'spec_helper'

describe User do
  it { should have_many(:stories).through(:user_story) }

  it "should have an email address" do
    new_user = User.create(:email => "test_guy@hotmail.com")
    new_user.email.should == "test_guy@hotmail.com"
  end
  
end

