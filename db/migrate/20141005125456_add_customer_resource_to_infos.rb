class AddCustomerResourceToInfos < ActiveRecord::Migration
  def change
    add_column :infos, :customer_resource, :string
  end
end
