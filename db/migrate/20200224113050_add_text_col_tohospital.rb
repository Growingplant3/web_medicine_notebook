class AddTextColTohospital < ActiveRecord::Migration[6.0]
  def change
    add_column :hospitals, :side_effect, :text
    add_column :hospitals, :allergy, :text
    add_column :hospitals, :sick, :text
    add_column :hospitals, :operation, :text
  end
end