class CreateHospitalClinicalDepartmentRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :hospital_clinical_department_relations do |t|
      t.references :hospital, index: { name: 'add_hos_cli_relations1' }, foreign_key: true
      t.references :clinical_department, index: { name: 'add_hos_cli_relations2' }, foreign_key: true

      t.timestamps
    end
  end
end