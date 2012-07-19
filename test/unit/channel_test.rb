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

require 'test_helper'

class ChannelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
