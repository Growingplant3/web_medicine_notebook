class CreateHospitals < ActiveRecord::Migration[6.0]
  def change
    create_table :hospitals do |t|

      t.string :name
      t.text :address
      t.string :telephone_number
      t.string :mail_address
      t.integer :holiday
      t.boolean :emergency
      t.text :remarks
      t.timestamps
    end
  end
end