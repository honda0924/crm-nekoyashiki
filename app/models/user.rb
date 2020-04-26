class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :clients

  VALID_EMAIL_REGEX=/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,presence: true,uniqueness: true,format: {with: VALID_EMAIL_REGEX,message: 'メールアドレスが正しくありません。'}
  validates :password,presence: true, length: {minimum: 6}
  validates :name,presence: true

end
