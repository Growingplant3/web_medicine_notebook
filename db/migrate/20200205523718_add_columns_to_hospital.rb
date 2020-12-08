class AddColumnsToHospital < ActiveRecord::Migration[6.0]
  def change
    add_column :hospitals, :postcode, :string
    add_column :hospitals, :prefecture_code, :string
    add_column :hospitals, :address_city, :string
    add_column :hospitals, :address_street, :string
    add_column :hospitals, :address_building, :string
  end
end