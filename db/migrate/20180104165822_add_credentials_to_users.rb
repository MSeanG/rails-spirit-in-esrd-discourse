class AddCredentialsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :credentials, :string
  end
end
