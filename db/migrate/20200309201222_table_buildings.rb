class TableBuildings < ActiveRecord::Migration[5.2]
  def change

    create_table :buildings do |t|

      t.references :customer, foreign_key: true
      t.references :address, foreign_key: true
  
    
      t.string :building_administrator_full_name
      t.string :building_administrator_email
      t.string :building_administrator_phone
      t.string :building_technical_contact_name
      t.string :building_technical_contact_email
      t.string :building_technical_contact_phone
      t.timestamps

    end
  end
end
