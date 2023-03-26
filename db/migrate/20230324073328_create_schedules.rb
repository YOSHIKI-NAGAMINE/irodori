class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|

      t.string :day
      t.string :time
      t.string :title
      t.string :place
      t.string :map_link
      t.text :memo
      t.references :siori, null: false, foreign_key: true

      t.timestamps
    end
  end
end
