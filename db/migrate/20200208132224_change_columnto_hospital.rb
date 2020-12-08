class ChangeColumntoHospital < ActiveRecord::Migration[6.0]
  def change
    add_column :hospitals, :open, :time
    add_column :hospitals, :close, :time
    add_column :hospitals, :twenty_four, :boolean, default: false
  end
end
