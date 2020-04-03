class CreateClinicaldepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :clinicaldepartments do |t|
      t.integer :classification

      t.timestamps
    end
  end
end
