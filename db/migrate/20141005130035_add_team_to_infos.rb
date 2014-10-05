class AddTeamToInfos < ActiveRecord::Migration
  def change
    add_column :infos, :team, :string
  end
end
