class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string,                   null: false
    add_column :users, :last_name, :string,              null: false
    add_column :users, :identification_number, :string,  null: false, unique: true
    add_column :users, :cellphone, :string,  null: false, unique: true
    add_column :users, :avatar, :string

    #model associations
    add_column :users, :role_id, :integer, null: :false

    add_foreign_key :users, :roles
  end

end
