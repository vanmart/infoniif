class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :shortname
      t.string :expedient
      t.text   :social_object
      t.string :nature
      t.string :nit
      t.string :adderss
      t.string :phone
      t.string :email
      t.date   :activities_started_at
      t.string :accounting_software
      t.string :society_type
      t.integer :partnerns_count
      t.float :authorized_capital
      t.float :subscribed_capital
      t.float :paid_capital
      t.float :average_monthly_income
      t.integer :legal_representative_id
      t.integer :internal_counter_id  

      t.timestamps null: false
    end
  end
end
