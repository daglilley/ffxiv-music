class CreateZones < ActiveRecord::Migration[6.0]
  def change
    create_table :zones do |t|
      t.string :name

      t.timestamps
    end

    add_index :zones, :name
  end
end
