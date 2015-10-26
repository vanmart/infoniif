class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :id_number, :string
    add_column :users, :cellphone, :string
    add_column :users, :avatar, :string
    add_column :users, :role, :string
  end
end
