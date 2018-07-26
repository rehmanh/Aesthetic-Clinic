require 'test_helper'

describe User do 
  
  setup do
    @user = User.new
    @user.first_name = "Johnathan"
    @user.last_name = "Doe"
    @user.phone_number = "12345678910"
    @user.email = "john@example.com"
    @user.password_digest = BCrypt::Password.create('password')
  end

  it "is invalid without a first name, last name and phone number and email address" do 
    invalid_user = User.new
    refute invalid_user.valid?
  end

  it "needs to have a first name, last name, phone number and email address to be valid" do
    assert @user.valid?
  end

  it "needs to have a properly formatted email address" do
    @user.email = "incorrect email @ example dot . com"
    refute @user.valid?
    @user.email = "testemail@domain.com"
    assert @user.valid?
    @user.email = "old.reddit.com/r/ruby"
    refute @user.valid?
    @user.email = "hello12_girl_that_rocks@kittens-planet-12.business"
    assert @user.valid?
  end

  it "needs to have a valid phone number" do 
    @user.phone_number = "hello, it's me"
    refute @user.valid?
  end

  it "needs to have a phone number that is 11 digits long exactly" do
    assert_equal @user.phone_number.length, 11
  end

  it "must allow phone numbers that may be delineated with dashes" do
    @user.phone_number = "0300-9233780"
    assert @user.valid?
    @user.phone_number = "+923002541086"
    assert @user.valid?
    @user.phone_number = "0321-321-1125254"
    assert @user.valid?
  end

  it "should be able to have appointments" do
    t = User.reflect_on_association(:appointments)
    assert_equal t.macro, :has_many
  end

end
