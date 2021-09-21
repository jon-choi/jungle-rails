require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Validations" do
    it "validates if a product is valid" do
      @category = Category.new(name: "Home")
      @product = Product.new(name: "Guitar", price: 400, quantity: 30, category: @category)
      expect(@product).to be_valid
    end

    it "throws an error when name is blank" do
      @category = Category.new(name: "Home")
      @product = Product.new(name: nil, price: 400, quantity: 30, category: @category)
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end

    it "throws an error when price is blank" do
      @category = Category.new(name: "Home")
      @product = Product.new(name: "Guitar", price: nil, quantity: 30, category: @category)
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to include("Price can't be blank")
    end

    it "throws an error when quantity is blank" do
      @category = Category.new(name: "Home")
      @product = Product.new(name: "Guitar", price: 400, quantity: nil, category: @category)
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it "throws an error when category is blank" do
      @category = Category.new(name: "Home")
      @product = Product.new(name: "Guitar", price: 400, quantity: 30, category: nil)
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end

  end
end