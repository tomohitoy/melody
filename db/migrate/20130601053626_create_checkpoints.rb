class CreateCheckpoints < ActiveRecord::Migration
  def change
    create_table :checkpoints do |t|
      t.integer :mission_id
      t.integer :point
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
