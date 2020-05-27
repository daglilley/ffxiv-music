class CreateDuties < ActiveRecord::Migration[6.0]
  def change
    create_table :duties do |t|
      t.string :name
      t.integer :level

      t.timestamps
    end

    add_index :duties, :name
    add_index :duties, :level
  end
end
