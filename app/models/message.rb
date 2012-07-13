class Message < ActiveRecord::Base
  belongs_to :channel
  attr_accessible :message, :name
end
