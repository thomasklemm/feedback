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

  # Whitelist
  attr_readonly :name
end
