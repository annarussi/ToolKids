class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :score, default: 0
      t.boolean :completed, default: false
      t.integer :level
      t.references :kid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
