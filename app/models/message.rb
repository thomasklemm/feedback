# == Schema Information
#
# Table name: messages
#
#  channel_id :integer
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  message    :string(255)
#  name       :string(255)
#  updated_at :datetime         not null
#

class Message < ActiveRecord::Base

  # A message belongs to a Channel
  #  which in turn belongs to an Institution

  # Message:
  #  message: The message body
  #  name: Name of the Sender (optional)

  # Associations
  belongs_to :channel

  # Whitelist
  attr_accessible :message, :name

  # Validations
  validates :message, presence: true
end
