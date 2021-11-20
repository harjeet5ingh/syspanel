class System < ApplicationRecord
  has_many :customer_systems, dependent: :destroy
  has_many :customers, through: :customer_systems

  validates :name, presence: true
  validates :manufactured_date, presence: true

  enum name: {
    level_indicator: 0,
    smart_on_line: 1,
    smart_double_alarm: 2,
    smart_semi_automatic_for_submersible: 3,
    freedom_automatic: 4,
    freedom_on_line: 5,
    freedom_booster: 6,
    sarvotum_automatic: 7,
    sarvotum_automatic_for_on_line: 8,
    sarvotum_autmatic_for_booster: 9,
    serve_serva_full_automatic_for_on_line_with_timer: 10,
    serve_serva_semi_automatic_for_on_line: 11,
    serve_serva_submersible: 12,
  }

  enum status: { inactive: 0, active: 1, dead: 2 }

  default_scope { where(deleted_at: nil) }

  class << self
    def collect_table_data(systems)
      systems.collect do |system|
        [
          system.id,
          system.name.titleize,
          system.manufactured_date.strftime("%d %b, %Y"),
          system.status.titleize,
          "<a href='/systems/#{system.id}'> View </a>",
        ]
      end
    end
  end
end
