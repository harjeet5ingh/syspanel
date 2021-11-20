class CustomerSystem < ApplicationRecord
  belongs_to :customer
  belongs_to :system

  validates :installation_date, presence: true

  enum motor_type: {
    on_line: 0,
    submersible: 1,
    jet_pump: 2,
    booster: 3,
    submersible_pump: 4,
  }

  enum status: { installed: 0, replaced: 1 }
end
