require 'rails_helper'

describe Client do
  describe '#create' do
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
      user=FactoryBot.create(:user)
      client = build(:client,email: "a")
      client.valid?
      expect(client.errors[:email]).to include("メールアドレスが正しくありません。")
    end
    it "is invalid with a regulation mobile" do
      user=FactoryBot.create(:user)
      client = build(:client,mobile: "a")
      client.valid?
      expect(client.errors[:mobile]).to include("携帯電話番号が正しくありません。")
    end

  end
end