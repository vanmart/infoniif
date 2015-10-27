class CreateCompanyAssets < ActiveRecord::Migration
  def change
    create_table :company_assets do |t|
      t.belongs_to :company, index: true
      t.integer :control
      t.string :code
      t.string :description
      t.string :asset_registration
      t.string :engine_serial
      t.string :cadastral_record
      t.string :location
      t.date :acquisition_date
      t.float :acquisition_cost
      t.integer :fiscal_lifespan
      t.integer :estimated_lifespan
      t.integer :depreciation_years
      t.integer :depreciation_months
      t.float :accumulated_depreciation
      t.float :recidual_value
      t.integer :improvements
      t.float :amount_on_COLPCGA_book
      t.string :valuations
      t.float :fair_value
      t.boolean :diferred_taxes
      t.float :length
      t.date :court_date_balance






      t.timestamps null: false
    end
  end
end
