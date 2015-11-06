class CreateCompanies < ActiveRecord::Migration

  def change
    create_table :companies do |t|
      t.string :name,                                  null: false, unique: true
      t.string :shortname,                             null: false, unique: true
      t.text   :social_object,                         null: false
      t.string :nit,                                   null: false, unique: true
      t.string :adderss,                               null: false
      t.string :phone,                                 null: false, unique: true
      t.string :email,                                 null: false
      t.string :nature,                                null: false
      t.date   :activities_started_at,                 null: false
      t.integer :partnerns_count,                      null: false
      t.float :authorized_capital,                     null: false
      t.float :subscribed_capital,                     null: false
      t.float :paid_capital,                           null: false

      #caracterization
      t.float :average_monthly_incomev,                null: false
      t.integer :company_assets_count,                 null: false
      t.integer :employees_by_dependency
      t.float :export_import_percent
      t.integer :group,                                null: false

      #company politics
      t.float :loan_portfolio_discount_rate,           null: false
      t.float :apply_discount_rate,                    null: false
      t.float :tax_rate,                               null: false
      t.integer :national_clients_limit_days,          null: false
      t.integer :particular_loan_limit_days,           null: false
      t.integer :difficult_charge_loan_limit_days,     null: false
      t.integer :income_charge_limit_days,             null: false
      t.integer :recovery_loan_probable_days_90_180,   null: false
      t.integer :recovery_loan_probable_days_180_360,  null: false
      t.integer :recovery_loan_probable_days_360,      null: false

      #model associations
      t.integer :legal_representative_id,              null: :false
      t.integer :accountant_id,                        null: :false
      t.integer :company_type_id,                      null: :false
      t.integer :accounting_software_id,               null: :false

      t.timestamps null: false
    end

    add_foreign_key :companies, :company_types
  end
end
