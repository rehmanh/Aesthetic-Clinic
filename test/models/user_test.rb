require 'test_helper'

describe User do 
  it "should exist" do
    assert User
  end

  it "requires a first name" do
    user = User.new
    refute user.valid?
  end

end
