require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    
    it "must be created with a password" do
      @user = User.new(first_name: "Dennis", last_name: "Reynolds", email: "god@mail.com", password: nil, password_confirmation: nil)
      expect(@user).to be_invalid
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it "is not valid if passwords do not match" do
      @user = User.new(first_name: "Dennis", last_name: "Reynolds", email: "god@mail.com", password: "123", password_confirmation: "1")
      expect(@user). to be_invalid
    end

    it "must be created with a password that matched confirmation" do
      @user = User.new(first_name: "Dennis", last_name: "Reynolds", email: "god@mail.com", password: "123", password_confirmation: "123")
      expect(@user.password).to eq(@user.password_confirmation)
    end

  end
end
