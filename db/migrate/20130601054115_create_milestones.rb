class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.integer :user_id
      t.string :image
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :checkpoint_id
      t.integer :mission_id

      t.timestamps
    end
  end
end
