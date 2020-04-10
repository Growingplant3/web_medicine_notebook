class CreateClinicalDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :clinical_departments do |t|
      t.integer :classification

      t.timestamps
    end
  end
end
