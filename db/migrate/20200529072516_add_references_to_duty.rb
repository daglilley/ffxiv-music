class AddReferencesToDuty < ActiveRecord::Migration[6.0]
  def change
    add_reference :duties, :duty_type, null: false, foreign_key: true
    add_reference :duties, :expansion, null: false, foreign_key: true
  end
end
