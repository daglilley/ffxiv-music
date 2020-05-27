class CreateOrchestrionTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :orchestrion_types do |t|
      t.string :name

      t.timestamps
    end

    add_index :orchestrion_types, :name
  end
end
