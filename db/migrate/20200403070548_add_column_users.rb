class AddColomnUsers < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :sex, :integer
	add_column :users, :age, :integer
	add_column :users, :weight, :integer
  end
end
