class Bgm < ApplicationRecord

  belongs_to :instance, polymorphic: true
  belongs_to :track

  validates  :track_id,      presence: true
  validates  :instance_id,   presence: true
  validates  :instance_type, presence: true

end
