class CreateVacations < ActiveRecord::Migration[6.0]
  def change
    create_table :vacations do |t|
      t.boolean :sun, default: false
      t.boolean :mon, default: false
      t.boolean :tue, default: false
      t.boolean :wed, default: false
      t.boolean :thu, default: false
      t.boolean :fri, default: false
      t.boolean :sat, default: false

      t.timestamps
    end
  end
end