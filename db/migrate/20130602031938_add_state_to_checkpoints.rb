class AddStateToCheckpoints < ActiveRecord::Migration
  def change
    add_column :checkpoints, :state, :boolean
  end
end
