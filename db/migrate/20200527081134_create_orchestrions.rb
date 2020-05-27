class CreateOrchestrions < ActiveRecord::Migration[6.0]
  def change
    create_table :orchestrions do |t|
      t.string :name

      t.timestamps
    end

    add_index :orchestrions, :name
  end
end
