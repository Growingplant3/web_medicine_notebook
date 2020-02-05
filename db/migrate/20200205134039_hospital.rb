class Hospital < ActiveRecord::Migration[6.0]
  def change
    rename_table :Companies, :Hospitals
  end
end