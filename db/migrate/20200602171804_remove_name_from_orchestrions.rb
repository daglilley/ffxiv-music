class RemoveNameFromOrchestrions < ActiveRecord::Migration[6.0]
  def change
    remove_column :orchestrions, :name
  end
end
