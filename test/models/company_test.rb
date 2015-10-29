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

require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
