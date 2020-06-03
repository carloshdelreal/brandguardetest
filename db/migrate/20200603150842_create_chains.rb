class CreateChains < ActiveRecord::Migration[6.0]
  def change
    create_table :chains do |t|
      t.string :chain_name, limit: 50

      t.timestamps
    end
    add_index :chains, :chain_name, unique: true
  end
end
