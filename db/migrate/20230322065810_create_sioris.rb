class CreateSioris < ActiveRecord::Migration[6.0]
  def change
    create_table :sioris do |t|
      t.string :title, null: false
      t.date :start_day
      t.string :day
      t.timestamps
    end
  end
end
