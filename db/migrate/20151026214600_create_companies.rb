class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :shortname
      t.text   :social_object
      t.string :nit
      t.string :adderss
      t.string :phone
      t.string :email
      t.string :nature
      t.date   :activities_started_at
      t.integer :partnerns_count
      t.float :authorized_capital
      t.float :subscribed_capital
      t.float :paid_capital

      #caracterization
      t.float :average_monthly_income
      t.integer :company_assets_count
      t.integer :employees_by_dependency
      t.float :export_import_percent
      t.integer :group

      #company politics
      t.float :loan_portfolio_discount_rate
      t.float :apply_discount_rate
      t.float :tax_rate
      t.integer :national_clients_limit_days
      t.integer :particular_loan_limit_days
      t.integer :difficult_charge_loan_limit_days
      t.integer :income_charge_limit_days
      t.integer :recovery_loan_probable_days_90_180
      t.integer :recovery_loan_probable_days_180_360
      t.integer :recovery_loan_probable_days_360

      #model associations
      t.integer :legal_representative_id, null: :false
      t.integer :accountant_id, null: :false
      t.integer :company_type_id, null: :false
      t.integer :accounting_software_id, null: :false

      t.timestamps null: false
    end

    add_foreign_key :companies, :company_types
  end
end
