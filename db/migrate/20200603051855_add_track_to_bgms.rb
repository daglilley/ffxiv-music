class AddTrackToBgms < ActiveRecord::Migration[6.0]
  def change
    add_reference :bgms, :track, null: false, foreign_key: true
  end
end
