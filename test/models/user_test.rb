require 'test_helper'

describe User do 
  
  setup do
    @user = User.new(first_name: "Test", last_name: "User", email: "test@user.com", phone_number: '11111111111')
  end

  it "must be valid" do
    refute @user.valid?
  end


end
