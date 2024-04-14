class CreateFruits < ActiveRecord::Migration[7.1]
  def change
    create_table :fruits do |t|
      t.string :name
      t.string :color
      t.string :origin
      t.string :season
      t.decimal :price, precision: 8, scale:2
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
