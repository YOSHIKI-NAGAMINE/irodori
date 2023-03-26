class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|

      t.text :comment
      t.references :siori, null: false, foreign_key: true
      t.references :schedule, null: false, foreign_key: true
      t.timestamps
    end
  end
end
