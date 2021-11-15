require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "validates new product" do
    @category = Category.new(:name => "Sports")
    @product = Product.new(:name => "New Name", :price => 10000, :quantity => 100, :category => @category)
    @product.save
    expect(@product).to be_valid
  end

  it "validates new product without a name is not valid" do
    @category = Category.new(:name => "Sports")
    @product = Product.new(:name => nil, :price => 10000, :quantity => 100, :category => @category)
    @product.save
    expect(@product).not_to be_valid
  end

  it "validates new product without a price is not valid" do
    @category = Category.new(:name => "Sports")
    @product = Product.new(:name => "New Name", :price => nil, :quantity => 100, :category => @category)
    @product.save
    expect(@product.price).to eq(0)
  end

  it "validates new product without a quantity is not valid" do 
    @category = Category.new(:name => "Sports")
    @product = Product.new(:name => "New Name", :price => 10000, :quantity => nil, :category => @category)
    @product.save
    expect(@product).not_to be_valid
  end

  it "validates new product without a category is not valid" do
    @category = Category.new(:name => "Sports")
    @product = Product.new(:name => "New Name", :price => 10000, :quantity => 100, :category => nil)
    @product.save
    expect(@product).not_to be_valid
  end
end

