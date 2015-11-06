  class CreateCompanyAssets < ActiveRecord::Migration
  def change
    create_table :company_assets do |t|

      t.integer :control,                  null: false, unique: true
      t.string :code,                      null: false, unique: true
      t.integer :quantity,                 null: false
      t.text :description,                 null: false
      t.date :acquired_at,                 null: false
      t.float :acquisition_cost,           null: false
      t.string :location,                  null: false
      t.integer :estimated_lifespan_years, null: false
      t.text :improvements,                null: false
      t.float :valuations,                 null: false
      t.float :residual_value,             null: false

      #
      t.string :real_estate_registration,  null: false
      t.string :cadastral_record,          null: false
      t.float :meters_length

      #
      t.string :engine_serial,             unique: true

      # model associations
      t.integer :company_asset_type_id, null: :false
      t.integer :company_id, null: :false

      t.timestamps null: false
    end

    add_foreign_key :company_assets, :company_asset_types
    add_foreign_key :company_assets, :companies

  end
end
