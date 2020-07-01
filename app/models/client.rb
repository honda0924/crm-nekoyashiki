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
  validates :email,format: {with: VALID_EMAIL_REGEX,message: 'メールアドレスが正しくありません。'},allow_blank: true
  validates :mobile,format: {with: VALID_MOBILE_REGEX,message: '携帯電話番号が正しくありません。'},allow_blank: true
  def self.import(file)
    CSV.foreach(file.path,headers: true) do |row|
      client = find_by(id: row["id"]) || new
      client.attributes = row.to_hash.slice(*updatable_attributes)
      client.save
    end
  end
  def self.updatable_attributes
    ["id","cleint_name1","client_name2","user_id"]
  end


end

