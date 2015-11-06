# == Schema Information
#
# Table name: accounting_softwares
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AccountingSoftware < ActiveRecord::Base

  has_many :companies

  validates :name, presence: true

end
