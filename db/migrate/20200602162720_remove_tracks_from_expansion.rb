class RemoveTracksFromExpansion < ActiveRecord::Migration[6.0]
  def change
    remove_reference :tracks, :expansion, null: false, foreign_key: true
  end
end
