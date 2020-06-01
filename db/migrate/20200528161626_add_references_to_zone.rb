class AddReferencesToZone < ActiveRecord::Migration[6.0]
  def change
    add_reference :zones, :region, null: false, foreign_key: true
    add_reference :zones, :mainzone, index: true
  end
end
