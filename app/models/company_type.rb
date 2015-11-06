# == Schema Information
#
# Table name: company_types
#
#  id         :integer          not null, primary key
#  name       :string
#  short_name :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CompanyType < ActiveRecord::Base

  has_many :companies

  validates :name, presence: true
  validates :short_name, presence: true

end