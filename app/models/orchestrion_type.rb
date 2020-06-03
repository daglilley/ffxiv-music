class OrchestrionType < ApplicationRecord

  has_many   :orchestrions

  validates  :name, presence: true
  
end
