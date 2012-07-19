# == Schema Information
#
# Table name: channels
#
#  created_at     :datetime         not null
#  description    :text
#  full_name      :string(255)
#  id             :integer          not null, primary key
#  institution_id :integer
#  name           :string(255)
#  slug           :string(255)
#  updated_at     :datetime         not null
#

class Channel < ActiveRecord::Base
    
  # A Channel belongs to an Institution
  #   and has many messages

  # Channel:
  #   name: Base for FriendlyId slug
  #   slug: Slugged name
  #   full_name: Full, human readable name
  #   description: Channel specific info

  # Relations
  belongs_to :institution
  has_many :messages, dependent: :destroy

  # ID
  extend FriendlyId
  friendly_id :name, use: [:slugged, :scoped], scope: :institution

  # Validations
  validates :name, uniqueness: { scope: :institution_id }

  # Whitelist
  attr_accessible :name, :full_name, :description

end
