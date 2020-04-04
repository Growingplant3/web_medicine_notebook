class CreateHospitalClinicaldepartmentRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :hospital_clinicaldepartment_relations do |t|
      t.references :hospital, index: { name: 'add_hos_cli_reelations1' }, foreign_key: true
      t.references :clinicaldepartment, index: { name: 'add_hos_cli_reelations2' }, foreign_key: true

      t.timestamps
    end
  end
end