class CreateTelphones < ActiveRecord::Migration[6.0]
  def change
    create_table :telphones do |t|
      t.string :num1
      t.string :num2
      t.string :num3

      t.timestamps
    end
  end
end
