class Client < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :client_rank
  belongs_to_active_hash :client_cat
  belongs_to_active_hash :closing_day
  belongs_to_active_hash :payment_day
  belongs_to_active_hash :payment_method


  belongs_to :user
  has_many :contacts
  validates :client_name1,presence: true
end
