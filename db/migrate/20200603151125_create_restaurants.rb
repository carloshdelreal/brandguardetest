class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name, limit: 100
      t.string :address, limit: 200
      t.references :chain, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
    add_index :restaurants, :name, unique: true
  end
end
