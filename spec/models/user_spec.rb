require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe 'Validations' do
    # validation examples here
    it "validates that new user can be created" do
      @user = User.new(:first_name => "Kyle", :last_name => "Tenn", :email => "kyle@gmail.com", :password => "123456", :password_confirmation => "123456")
      @user.save
      expect(@user).to be_valid
    end

    it "validates that a user cannot be created with passwords that do not match" do
      @user = User.new(:first_name => "Kyle", :last_name => "Tenn", :email => "kyle@gmail.com", :password => "123456", :password_confirmation => "654321")
      @user.save
      expect(@user).not_to be_valid
    end

    it "validates that a user cannot be created without a password" do
      @user = User.new(:first_name => "Kyle", :last_name => "Tenn", :email => "kyle@gmail.com", :password => nil, :password_confirmation => nil)
      @user.save
      expect(@user).not_to be_valid
    end

    it "validates that a user cannot be created without first name" do
      @user = User.new(:first_name => nil, :last_name => "Tenn", :email => "kyle@gmail.com", :password => "123456", :password_confirmation => "123456")
      @user.save
      expect(@user).not_to be_valid
    end

    it "validates that a user cannot be created without last name" do
      @user = User.new(:first_name => "Kyle", :last_name => nil, :email => "kyle@gmail.com", :password => "123456", :password_confirmation => "123456")
      @user.save
      expect(@user).not_to be_valid
    end

    it "validates that a user cannot be created without email" do
      @user = User.new(:first_name => "Kyle", :last_name => "Tenn", :email => nil, :password => "123456", :password_confirmation => "123456")
      @user.save
      expect(@user).not_to be_valid
    end

    it "validates that you create two accounts with the same email" do
      @user1 = User.new(:first_name => "Kyle", :last_name => "Tenn", :email => "kyle@gmail.com", :password => "123456", :password_confirmation => "123456")
      @user1.save
      @user2 = User.new(:first_name => "Kyle", :last_name => "Tenn", :email => "kyle@gmail.com", :password => "123456", :password_confirmation => "123456")
      @user2.save
      expect(@user2).not_to be_valid
    end

    it "validates that you cannot create account with password less than 6 chars" do
      @user = User.new(:first_name => "Kyle", :last_name => "Tenn", :email => "kyle@gmail.com", :password => "123", :password_confirmation => "123")
      @user.save
      expect(@user).not_to be_valid
    end

  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
    it "validates user can sign in with existing name" do
      @user = User.new(:first_name => "Kyle", :last_name => "Tenn", :email => "kyle@gmail.com", :password => "1234567", :password_confirmation => "1234567")
      @user.save
      expect(User.authenticate_with_credentials(@user.email, @user.password)).to eq(@user)
    end

    it "validates user cannot sign in with no email" do
      @user = User.new(:first_name => "Kyle", :last_name => "Tenn", :email => nil, :password => "1234567", :password_confirmation => "1234567")
      @user.save
      expect(User.authenticate_with_credentials(@user.email, @user.password)).not_to eq(@user)
    end

    it "validates user cannot sign in with no password" do
      @user = User.new(:first_name => "Kyle", :last_name => "Tenn", :email => "kyle@gmail.com", :password => nil, :password_confirmation => nil)
      @user.save
      expect(User.authenticate_with_credentials(@user.email, @user.password)).not_to eq(@user)
    end

    it "validates user can sign in with whitespace on email" do
      @user = User.new(:first_name => "Kyle", :last_name => "Tenn", :email => "kyle@gmail.com", :password => "123456", :password_confirmation => "123456")
      @user.save
      white_space_email = "   kyle@gmail.com   "
      expect(User.authenticate_with_credentials(white_space_email, @user.password)).to eq(@user)
    end

    it "validates user can sign in with email with capital letters" do
      @user = User.new(:first_name => "Kyle", :last_name => "Tenn", :email => "example@domain.com", :password => "1234567", :password_confirmation => "1234567")
      @user.save

      dummy_email = "EXAMPLe@DOMAIN.CoM"
      expect(User.authenticate_with_credentials(dummy_email, @user.password)).to eq(@user)
    end

    it "validates user can sign in with email with capital letters" do
      @user = User.new(:first_name => "Kyle", :last_name => "Tenn", :email => "eXample@domain.com", :password => "1234567", :password_confirmation => "1234567")
      @user.save

      dummy_email = "EXAMPLe@DOMAIN.CoM"
      expect(User.authenticate_with_credentials(dummy_email, @user.password)).to eq(@user)
    end

  end
end
