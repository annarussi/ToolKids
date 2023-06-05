class CreateMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :maps do |t|
      t.string :name
      t.integer :level
      t.boolean :completed
      t.references :kid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
