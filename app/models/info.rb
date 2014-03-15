# == Schema Information
#
# Table name: infos
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  address     :string(255)
#  phone       :string(255)
#  qq          :string(255)
#  email       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Info < ActiveRecord::Base
  attr_accessible :address, :description, :email, :name, :phone, :qq
end