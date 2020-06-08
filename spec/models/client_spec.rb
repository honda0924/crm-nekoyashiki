require 'rails_helper'

describe Client do
  describe '#create' do
    it "is invalid without client_name1" do
      user=FactoryBot.create(:user)
      client=build(:client,client_name1: "")
      client.valid?
      expect(client.errors[:client_name1]).to include("can't be blank")
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