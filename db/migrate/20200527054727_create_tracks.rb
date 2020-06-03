class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.string :name

      t.timestamps
    end

    add_index :tracks, :name
  end
end
