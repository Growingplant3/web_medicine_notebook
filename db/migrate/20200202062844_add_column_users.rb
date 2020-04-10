class AddColumnUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :sex, :integer
    add_column :users, :age, :integer
    add_column :users, :weight, :integer
  end
end
