class DownHosipitalColumn < ActiveRecord::Migration[6.0]
  def down
    remove_column :hospitals, :side_effect, :text
    remove_column :hospitals, :allergy, :text
    remove_column :hospitals, :sick, :text
    remove_column :hospitals, :operation, :text
  end
end