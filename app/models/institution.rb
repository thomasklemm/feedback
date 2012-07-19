# == Schema Information
#
# Table name: institutions
#
#  created_at  :datetime         not null
#  description :text
#  full_name   :string(255)
#  id          :integer          not null, primary key
#  name        :string(255)
#  updated_at  :datetime         not null
#

class Institution < ActiveRecord::Base

  # An Institution can hold many channels

  # Institution:
  #   name: Subdomain, base for FriendlyId scopes
  #   full_name: Full, human readable Name
  #   description: Institution-specific text

  # Relations
  has_many :channels

  # FriendlyId
  extend FriendlyId
  friendly_id :name

  # Validations
  validates :name, uniqueness: true

  # Protect all attributes
  attr_accessible :description
end
