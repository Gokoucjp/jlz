class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.integer :category
      t.string :path

      t.timestamps
    end
  end
end
