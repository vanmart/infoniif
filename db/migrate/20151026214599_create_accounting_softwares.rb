class CreateAccountingSoftwares < ActiveRecord::Migration
  def change
    create_table :accounting_softwares do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
