class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.string :color
      t.string :num_of
      t.integer :satellites

      t.timestamps null: false
    end
  end
end
