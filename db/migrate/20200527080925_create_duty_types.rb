class CreateDutyTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :duty_types do |t|
      t.string :name

      t.timestamps
    end

    add_index :duty_types, :name
  end
end
