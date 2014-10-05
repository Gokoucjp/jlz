# == Schema Information
#
# Table name: infos
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  description       :text
#  address           :string(255)
#  phone             :string(255)
#  qq                :string(255)
#  email             :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  customer_resource :string(255)
#  team              :string(255)
#

class Info < ActiveRecord::Base
  attr_accessible :address, :description, :email, :name, :phone, :qq, :customer_resource, :team
end
