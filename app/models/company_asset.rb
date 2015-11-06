# == Schema Information
#
# Table name: company_assets
#
#  id                       :integer          not null, primary key
#  control                  :integer
#  code                     :string
#  quantity                 :integer
#  description              :text
#  acquired_at              :date
#  acquisition_cost         :float
#  location                 :string
#  estimated_lifespan_years :integer
#  improvements             :text
#  valuations               :float
#  residual_value           :float
#  real_estate_registration :string
#  cadastral_record         :string
#  meters_length            :float
#  engine_serial            :string
#  company_asset_type_id    :integer
#  company_id               :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

class CompanyAsset < ActiveRecord::Base

  belongs_to :company
  belongs_to :company_asset_type

  validates :control, presence: true
  validates :code, presence: true
  validates :quantity, presence: true
  validates :description, presence: true
  validates :acquired_at, presence: true
  validates :acquisition_cost, presence: true
  validates :location, presence: true, length: { minimum: 8 }
  validates :improvements, presence: true
  validates :acquired_at, presence: true
  validates :residual_value, presence: true
  validates :real_estate_registration, presence: true
  validates :cadastral_record, presence: true
  validates :company_asset_type_id, presence: true
  validates :company_id, presence: true

end
