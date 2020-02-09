class AddColumnsToHospital < ActiveRecord::Migration[6.0]
  def change
    add_column :Hospitals, :postcode, :string
    add_column :Hospitals, :prefecture_code, :string 
    add_column :Hospitals, :address_city, :string 
    add_column :Hospitals, :address_street, :string 
    add_column :Hospitals, :address_building, :string 
  end
end