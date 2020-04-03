class ChangeHosipital < ActiveRecord::Migration[6.0]
  def change
    remove_column :hospitals, :side_effect
    remove_column :hospitals, :allergy
    remove_column :hospitals, :sick
    remove_column :hospitals, :operation
  end
end