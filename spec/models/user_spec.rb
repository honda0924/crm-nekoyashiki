require 'rails_helper'
describe User do
  describe '#create' do
    it "is invalid without password" do
      user=User.new(name: "honda",email: "test@gmail.com",password: "")
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end
  end
end