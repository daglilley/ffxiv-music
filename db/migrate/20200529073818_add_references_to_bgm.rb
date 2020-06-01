class AddReferencesToBgm < ActiveRecord::Migration[6.0]
  def change
    add_reference :bgms, :listenable, null: false, polymorphic: true
  end
end
