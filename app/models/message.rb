class Message < ActiveRecord::Base

  # A message belongs to a Channel
  #  which in turn belongs to an Institution

  # Message:
  #  message: The message body
  #  name: Name of the Sender

  # Associations
  belongs_to :channel

  # Whitelist
  attr_accessible :message, :name

  # Validations
  validates :message, presence: true
end
