class Orchestrion < ApplicationRecord

  belongs_to :track
  belongs_to :orchestrion_type

  validates  :track_id,            presence: true
  validates  :orchestrion_type_id, presence: true

end
