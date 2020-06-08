require 'rails_helper'

describe User do
  describe '#create' do
    it "is invalid without password" do
      user=build(:user,password: "")
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end
    it "is invalid without name" do
      user=build(:user,name: "")
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
    end
    it "is invalid without email" do
      user=build(:user,email: "")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
    it "is invalid without unmatching password_confirmation" do
      user = build(:user,password_confirmation: "a")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end
    it "is invalid with a regulation email" do
      user = build(:user,email: "a")
      user.valid?
      expect(user.errors[:email]).to include("メールアドレスが正しくありません。")
    end
    it "is invalid with a duplicate email address" do
      user=create(:user)
      another_user = build(:user,email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end
    it "is invalid with password less 5 characters" do
      user = build(:user,password: "aaaaa")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
    end
    it "is valid with password over 6 characters" do
      user = build(:user)
      user.valid?
      expect(user).to be_valid
    end
  end
end