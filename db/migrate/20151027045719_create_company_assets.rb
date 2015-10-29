class CreateCompanyAssets < ActiveRecord::Migration
  def change
    create_table :company_assets do |t|

      t.integer :control
      t.string :code
      t.integer :quantity
      t.text :description
      t.date :acquired_at
      t.float :acquisition_cost
      t.string :location
      t.integer :estimated_lifespan
      t.text :improvements
      t.float :valuations
      t.float :residual_value

      #
      t.string :real_estate_registration
      t.string :cadastral_record
      t.float :meters_length

      #
      t.string :engine_serial

      # model associations
      t.integer :company_asset_type_id, null: :false
      t.integer :company_id, null: :false

      t.timestamps null: false
    end

    add_foreign_key :company_assets, :company_asset_types
    add_foreign_key :company_assets, :companies

  end
end
