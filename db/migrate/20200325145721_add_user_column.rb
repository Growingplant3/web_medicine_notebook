class AddUserColumn < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :side_effect, :text
    add_column :users, :allergy, :text
    add_column :users, :sick, :text
    add_column :users, :operation, :text
  end
end