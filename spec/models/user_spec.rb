require 'spec_helper'

describe User do

  before { @user = User.new(name: "Example User", username: "user", email: "user@example.com",
                                                  password: "foobar", password_confirmation: "foobar") }

  subject { @user }

  # test for presence of attributes
  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:username) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation)}
  it { should respond_to( :authenticate) }

  # test presence in attributes field
  it { should be_valid }
  describe "when name is not present" do
  	before { @user.name = " " }
  	it { should_not be_valid }
  end

  describe "when username is not present" do
    before { @user.username = " " }
    it { should_not be_valid }
  end

  describe "when email is not present" do
  	before { @user.email = " " }
  	it { should_not be_valid }
  end

  describe "when password is not present" do
    before do
      @user = User.new(name: "Example User", username: "user", email: "user@example.com",
                                        password: " ", password_confirmation: " ")
    end
    it { should_not be_valid }
  end

  # test length of name and username
  describe "when name is too long" do
    before { @user.name = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when username is too long" do
    before { @user.username = "a" * 51 }
    it { should_not be_valid }
  end

  # test for invalid email
  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo. foo@bar_baz.com foo@bar+baz.com]
      addresses.each do | invalid_address |
        @user.email = invalid_address
        expect(@user).not_to be_valid
      end
    end
  end

  # test for valid email
  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end

  #test for duplicate email address and username insensitive to case
  describe "when email address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end
    it { should_not be_valid }
  end

  describe "when username is already taken" do
    before do
      user_with_same_username = @user.dup
      user_with_same_username.username = @user.username.upcase
      user_with_same_username.save
    end
    it { should_not be_valid }
  end

  #test for when password does not match confirmation
  describe "when password does not match confirmation" do
    before { @user.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end
  #test password length
  describe "with a password that is too short" do
    before { @user.password = @user.password_confirmation = "a" *5 }
    it { should be_invalid }
  end

  #test for password match and mismatch
  describe "return value of authenticate method" do
    before { @user.save }
    let( :found_user ) { User.find_by(email: @user.email) }

    describe "with valid password" do
      it { should eq found_user.authenticate(@user.password) }
    end

    describe "with invalid password" do
      let( :user_for_invalid_password) { found_user.authenticate("invalid") }

      it { should_not eq user_for_invalid_password }
      specify { expect(user_for_invalid_password).to be_false }
    end
  end

end
