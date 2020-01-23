class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :address
      t.integer :telephone_number
      t.string :mail_address
      t.time :open
      t.time :close
      t.boolean :emergency
      t.text :remarks

      t.timestamps
    end
  end
end
