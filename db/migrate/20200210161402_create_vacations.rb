class CreateVacations < ActiveRecord::Migration[6.0]
  def change
    create_table :vacations do |t|
      t.integer :hospital_id
      # 日曜日から月曜日の休診日を表形式で表現する
      t.integer :week_day
      t.boolean :is_closed, default: true

      t.timestamps
    end

    i = 1
    1..7.times do
      v = Vacation.new
      v.week_day = i
      if i == 1 || i == 7
        v.is_closed = false
      end
      i = i + 1
      v.save
    end

  end
end