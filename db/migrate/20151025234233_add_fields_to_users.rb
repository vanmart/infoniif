class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :identification_number, :string
    add_column :users, :cellphone, :string
    add_column :users, :avatar, :string
    add_column :users, :role_id, :integer, null: :false

    add_foreign_key :users, :roles
  end
end
