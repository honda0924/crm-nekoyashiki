class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :client_name1,null: false
      t.string :client_name2
      t.string :postcode
      t.string :add1
      t.string :add2
      t.string :add3
      t.string :tel
      t.string :fax
      t.string :client_person_in_charge
      t.string :mobile
      t.string :url
      t.string :email
      t.integer :client_rank_id
      t.integer :client_cat_id
      t.integer :closing_day_id
      t.integer :payment_day_id
      t.integer :payment_method_id
      t.references :user,foreign_key: true

      t.timestamps
    end
  end
end
