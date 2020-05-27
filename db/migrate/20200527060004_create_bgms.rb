class CreateBgms < ActiveRecord::Migration[6.0]
  def change
    create_table :bgms do |t|
      t.string :context
      
      t.timestamps
    end
  end
end
