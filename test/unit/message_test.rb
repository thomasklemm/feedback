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

require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
