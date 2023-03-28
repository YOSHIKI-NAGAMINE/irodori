class CreateAchevements < ActiveRecord::Migration[6.0]
  def change
    create_table :achevements do |t|
      t.integer :goal_number
      t.string :goal
      t.integer :fraction_top
      t.integer :fraction_bottom
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
