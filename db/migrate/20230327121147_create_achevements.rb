class CreateAchevements < ActiveRecord::Migration[6.0]
  def change
    create_table :achevements do |t|

      t.string :goal1
      t.string :gpal2
      t.string :goal3
      t.timestamps
    end
  end
end
