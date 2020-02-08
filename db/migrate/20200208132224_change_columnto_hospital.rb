class ChangeColumntoHospital < ActiveRecord::Migration[6.0]
  def change
    add_column :Hospitals, :twenty_four, :boolean
    add_column :Hospitals, :open1, :string
    add_column :Hospitals, :open2, :string
    add_column :Hospitals, :open3, :string
    add_column :Hospitals, :open4, :string
    add_column :Hospitals, :close1, :string
    add_column :Hospitals, :close2, :string
    add_column :Hospitals, :close3, :string
    add_column :Hospitals, :close4, :string
  end
end
