class Client < ApplicationRecord
  belongs_to :user
  has_many :contacts
  validates :client_name1,presence: true
end
