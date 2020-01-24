class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :address
      t.string :telephone_number
      t.string :mail_address
      t.integer :off, default: 0, null: false, limit: 1
      t.datetime :open
      t.datetime :close
      t.boolean :emergency
      t.text :remarks

      t.timestamps
    end
  end
end
