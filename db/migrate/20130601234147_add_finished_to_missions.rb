class AddFinishedToMissions < ActiveRecord::Migration
  def change
    add_column :missions, :finished, :boolean
  end
end
