class AddFieldsToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :nickname, :string
    add_column :admins, :name, :string
    add_column :admins, :avatar, :string
  end
end
