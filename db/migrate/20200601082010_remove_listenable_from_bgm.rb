class RemoveListenableFromBgm < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bgms, :listenable, null: false, polymorphic: true
  end
end
