require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    
    it "must be created with a password" do
      @user = User.new(first_name: "Dennis", last_name: "Reynolds", email: "god@mail.com", password: nil, password_confirmation: nil)
      expect(@user).to be_invalid
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it "is not valid if passwords do not match" do
      @user = User.new(first_name: "Dennis", last_name: "Reynolds", email: "god@mail.com", password: "123456", password_confirmation: "GoldenGod")
      expect(@user). to be_invalid
    end

    it "must be created with a password that matches confirmation" do
      @user = User.new(first_name: "Dennis", last_name: "Reynolds", email: "god@mail.com", password: "123456", password_confirmation: "123456")
      expect(@user.password).to eq(@user.password_confirmation)
    end

    it "only allows unique emails (not case sensitive)" do
      @user1 = User.new(first_name: "Dennis", last_name: "Reynolds", email: "god@mail.com", password: "123456", password_confirmation: "123456")
      @user1.save
      @user2 = User.new(first_name: "Charlie", last_name: "Kelly", email: "GOD@MAIL.com", password: "123456", password_confirmation: "123456")
      expect(@user2).to be_invalid
    end

    it "must be created with email" do
      @user = User.new(first_name: "Dennis", last_name: "Reynolds", email: nil, password: "123456", password_confirmation: "123456")
      expect(@user).to be_invalid
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it "must have a first name" do
      @user = User.new(first_name: nil, last_name: "Reynolds", email: "god@mail.com", password: "123456", password_confirmation: "123456")
      expect(@user).to be_invalid
      expect(@user.errors.full_messages).to include("First name can't be blank")
    end

    it "must have a last name" do
      @user = User.new(first_name: "Dennis", last_name: nil, email: "god@mail.com", password: "123456", password_confirmation: "123456")
      expect(@user).to be_invalid
      expect(@user.errors.full_messages).to include("Last name can't be blank")
    end

    it "must have at least 6 characters" do
      @user = User.new(first_name: "Dennis", last_name: "Reynolds", email: "den@den.com", password: "12345", password_confirmation: "12345")
      expect(@user).to be_invalid
    end

  end
end
