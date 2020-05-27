class CreateExpansions < ActiveRecord::Migration[6.0]
  def change
    create_table :expansions do |t|
      t.string :name
      t.integer :patch

      t.timestamps
    end

    add_index :expansions, :name
    add_index :expansions, :patch
  end
end
