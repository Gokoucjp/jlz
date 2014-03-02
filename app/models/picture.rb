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

class Picture < ActiveRecord::Base
  attr_accessible :category, :name, :path
end
