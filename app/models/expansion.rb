class Expansion < ApplicationRecord

  has_many   :duties

  validates  :name,  presence: true
  validates  :patch, presence: true

end
