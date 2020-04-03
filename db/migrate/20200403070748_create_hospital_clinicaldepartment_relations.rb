class CreateHospitalClinicaldepartmentRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :hospital_clinicaldepartment_relations do |t|
      t.references :hospital, foreign_key: true
      t.references :clinicaldepartment, foreign_key: true

      t.timestamps
    end
    add_index :hos_cli_relations, [:hospital_id, :clinicaldepartment_id], unique: true, name: 'hos_cli_relations_index'
  end
end
