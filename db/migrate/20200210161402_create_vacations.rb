class CreateVacations < ActiveRecord::Migration[6.0]
  def change
    create_table :vacations do |t|
      t.integer :hospital_id
      t.integer :consultation

      t.timestamps
    end
  end
end
