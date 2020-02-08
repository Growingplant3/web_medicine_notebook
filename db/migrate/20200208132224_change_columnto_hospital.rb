class ChangeColumntoHospital < ActiveRecord::Migration[6.0]
  def change
    add_column :Hospitals, :open, :time
    add_column :Hospitals, :close, :time
    add_column :Hospitals, :twenty_four, :boolean
  end
end
