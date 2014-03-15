class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :phone
      t.string :qq
      t.string :email

      t.timestamps
    end
  end
end
