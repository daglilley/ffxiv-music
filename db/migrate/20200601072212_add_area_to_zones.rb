class AddAreaToZones < ActiveRecord::Migration[6.0]
  def change
    add_reference :zones, :area, null: false, polymorphic: true
  end
end
