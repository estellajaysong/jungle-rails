require 'rails_helper'

RSpec.describe User, type: :model do

  before :each do
    @user = User.new(
      first_name: "first_name",
      last_name: "last_name",
      email: "email@gmail.com",
      password: "password", 
      password_confirmation: "password",
    )
  end
  
  describe "Validations" do

    it "is valid with valid attributes" do
      expect(@user).to be_valid
    end

    it "is not valid without a first name" do
      @user.first_name = nil

      expect(@user).to_not be_valid
    end

    it "is not valid without a last name" do
      @user.last_name = nil

      expect(@user).to_not be_valid
    end

    it "is not valid without an email" do
      @user.email = nil

      expect(@user).to_not be_valid
    end

    it "is not valid without a password" do
      @user.password = nil

      expect(@user).to_not be_valid
    end

    it "is not valid if the password does not have a minimum length of 5 characters" do
      @user.password = "four"

      expect(@user).to_not be_valid
    end

    it "is not valid without a password confirmation" do
      @user.password_confirmation = nil

      expect(@user).to_not be_valid
      p @user.errors.full_messages
    end

    it "is not valid if password and password confirmation do not match" do
      @user.password = "not the same"
      @user.password_confirmation = "different"

      expect(@user).to_not be_valid
      p @user.errors.full_messages
    end

    it "is not valid if the email is not unique (not case sensitive)" do
      @user2 = User.new(
      first_name: "first_name",
      last_name: "last_name",
      email: "email@gmail.COM",
      password: "password", 
      password_confirmation: "password"
    )
      @user.save
      @user2.save
      
      expect(@user2).to_not be_valid
      p @user2.errors.full_messages
    end

  end

  describe '.authenticate_with_credentials' do

    before :each do
      @user.save
    end

    it "is valid with a valid email and password" do
      expect(User.authenticate_with_credentials(@user.email, @user.password)).to be_instance_of(User)  
    end

    it "is valid with whitespace around email" do 
      @user.email = "    email@gmail.com  "
      expect(User.authenticate_with_credentials(@user.email, @user.password)).to be_instance_of(User)  
    end

    it "is valid with whitespace around email" do 
      @user.email = "    email@gmail.com  "
      expect(User.authenticate_with_credentials(@user.email, @user.password)).to be_instance_of(User)  
    end

    it "is valid with mixed case email" do 
      @user.email = "EMAIL@gmail.com  "
      expect(User.authenticate_with_credentials(@user.email, @user.password)).to be_instance_of(User)  
    end
  end

end
