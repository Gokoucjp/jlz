# == Schema Information
#
# Table name: pictures
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  category   :integer
#  path       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
