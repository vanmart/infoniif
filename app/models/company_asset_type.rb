# == Schema Information
#
# Table name: company_asset_types
#
#  id                        :integer          not null, primary key
#  name                      :string
#  fiscal_depreciation_years :integer
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

class CompanyAssetType < ActiveRecord::Base

  has_many :company_assets

  validates :name, presence: true
  validates :depreciation_year, presence: true

end
