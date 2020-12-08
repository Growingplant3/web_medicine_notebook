class CreateVacations < ActiveRecord::Migration[6.0]
  def change
    create_table :vacations do |t|
      t.integer :hospital_id
      # 日曜日から月曜日の休診日を表形式で表現する
      t.integer :week_day
      t.boolean :is_closed, default: true

      t.timestamps
    end

  end
end