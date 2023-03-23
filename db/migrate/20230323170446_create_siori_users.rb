class CreateSioriUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :siori_users do |t|

      t.references :siori, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
