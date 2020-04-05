class Contact < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :act_cat
  
  belongs_to :client
end
