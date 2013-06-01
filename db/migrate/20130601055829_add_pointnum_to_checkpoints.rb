class AddPointnumToCheckpoints < ActiveRecord::Migration
  def change
    add_column :checkpoints, :pointnum, :integer
  end
end
