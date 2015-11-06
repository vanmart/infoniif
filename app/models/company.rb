# == Schema Information
#
# Table name: companies
#
#  id                                  :integer          not null, primary key
#  name                                :string
#  shortname                           :string
#  social_object                       :text
#  nit                                 :string
#  adderss                             :string
#  phone                               :string
#  email                               :string
#  nature                              :string
#  activities_started_at               :date
#  partnerns_count                     :integer
#  authorized_capital                  :float
#  subscribed_capital                  :float
#  paid_capital                        :float
#  average_monthly_income              :float
#  company_assets_count                :integer
#  employees_by_dependency             :integer
#  export_import_percent               :float
#  group                               :integer
#  loan_portfolio_discount_rate        :float
#  apply_discount_rate                 :float
#  tax_rate                            :float
#  national_clients_limit_days         :integer
#  particular_loan_limit_days          :integer
#  difficult_charge_loan_limit_days    :integer
#  income_charge_limit_days            :integer
#  recovery_loan_probable_days_90_180  :integer
#  recovery_loan_probable_days_180_360 :integer
#  recovery_loan_probable_days_360     :integer
#  legal_representative_id             :integer
#  accountant_id                       :integer
#  company_type_id                     :integer
#  accounting_software_id              :integer
#  created_at                          :datetime         not null
#  updated_at                          :datetime         not null
#


#
#    validates :legacy_code, format: { with: /\A[a-zA-Z]+\z/,
#    message: "only allows letters" }
#


class Company < ActiveRecord::Base

  has_many :company_assets

  belongs_to :accounting_software
  belongs_to :company_type
  belongs_to :legal_representative, foreign_key: 'legal_representative_id', class_name: 'User'
  belongs_to :accountant, foreign_key: 'accountant_id', class_name: 'User'


  validates :name, presence: true
  validates :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :social_object, presence: true
  validates :nit, presence: true
  validates :adderss, presence: true
  validates :phone, presence: true
  validates :nature, presence: true
  validates :partnerns_count, presence: true
  validates :authorized_capital, presence: true
  validates :subscribed_capital, presence: true
  validates :paid_capital, presence: true
  validates :average_monthly_income, presence: true
  validates :company_assets_count, presence: true
  validates :average_monthly_income, presence: true
  validates :employees_by_dependency, presence: true
  validates :export_import_percent, presence: true
  validates :group, presence: true
  validates :loan_portfolio_discount_rate, presence: true
  validates :apply_discount_rate, presence: true
  validates :tax_rate, presence: true
  validates :national_clients_limit_days, presence: true
  validates :particular_loan_limit_days, presence: true
  validates :difficult_charge_loan_limit_days, presence: true
  validates :income_charge_limit_days, presence: true
  validates :recovery_loan_probable_days_90_180, presence: true
  validates :recovery_loan_probable_days_180_360, presence: true
  validates :recovery_loan_probable_days_360, presence: true
  validates :legal_representative_id, presence: true
  validates :accountant_id, presence: true
  validates :company_type_id, presence: true
  validates :accounting_software_id, presence: true

end