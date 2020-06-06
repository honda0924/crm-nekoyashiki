class Client < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :client_rank
  belongs_to_active_hash :client_cat
  belongs_to_active_hash :closing_day
  belongs_to_active_hash :payment_day
  belongs_to_active_hash :payment_method


  belongs_to :user
  has_many :contacts

  VALID_EMAIL_REGEX=/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_MOBILE_REGEX=/\A[0]+[789]+[0]\d{8}\z/
  
  validates :client_name1,presence: true
  validates :email,format: {with: VALID_EMAIL_REGEX,message: 'メールアドレスが正しくありません。'}
  validates :mobile,format: {with: VALID_MOBILE_REGEX,message: '携帯電話番号が正しくありません。'}
end
