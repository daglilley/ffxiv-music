class RemoveZoneFromZones < ActiveRecord::Migration[6.0]
  def change
    remove_reference :zones, :region, null: false, foreign_key: true
    remove_reference :zones, :mainzone, index: true
  end
end
