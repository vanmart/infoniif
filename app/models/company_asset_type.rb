# == Schema Information
#
# Table name: company_asset_types
#
#  id                :integer          not null, primary key
#  name              :string
#  depreciation_year :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class CompanyAssetType < ActiveRecord::Base

  has_many :company_assets

end
