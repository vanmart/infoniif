class CreateCompanyAssetTypes < ActiveRecord::Migration
  def change
    create_table :company_asset_types do |t|

      t.string :name,                                   null: false, unique: true
      t.integer :fiscal_depreciation_years,             null: false

      t.timestamps null: false
    end
  end
end
