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

require 'test_helper'

class CompanyAssetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
