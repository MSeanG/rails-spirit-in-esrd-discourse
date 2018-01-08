class AddIsActiveToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :is_active, :string
    add_column :users, :boolean, :string
  end
end
