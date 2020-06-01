class AddInstanceToBgm < ActiveRecord::Migration[6.0]
  def change
    add_reference :bgms, :instance, null: false, polymorphic: true
  end
end
