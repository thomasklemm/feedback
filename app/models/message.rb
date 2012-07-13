class Message < ActiveRecord::Base
  # Associations
  belongs_to :channel

  # Whitelist
  attr_accessible :message, :name

  # Validations
  validates :message, presence: true
end
