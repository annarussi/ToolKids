class CreateKids < ActiveRecord::Migration[7.0]
  def change
    create_table :kids do |t|
      t.string :nickname
      t.integer :total_score
      t.integer :age
      t.references :user, null: false, foreign_key: true
      t.references :avatar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
