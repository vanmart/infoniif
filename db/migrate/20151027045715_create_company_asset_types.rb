class CreateCompanyAssetTypes < ActiveRecord::Migration
  def change
    create_table :company_asset_types do |t|
      t.string :name
      t.integer :depreciation_year

      t.timestamps null: false
    end
  end
end
