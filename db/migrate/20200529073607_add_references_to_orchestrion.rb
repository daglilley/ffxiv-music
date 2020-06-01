class AddReferencesToOrchestrion < ActiveRecord::Migration[6.0]
  def change
    add_reference :orchestrions, :orchestrion_type, null: false, foreign_key: true
    add_reference :orchestrions, :track, null: false, foreign_key: true
  end
end
