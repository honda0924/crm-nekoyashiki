class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.integer :act_cat_id
      t.text :detail
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :in_progress
      t.references :client,foreign_key: true

      t.timestamps
    end
  end
end
