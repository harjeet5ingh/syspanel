class Customer < ApplicationRecord
  has_many :customer_systems, dependent: :destroy
  has_many :systems, through: :customer_systems

  validates :name, presence: true
  validates :state, presence: true
  validates :mobile, length: { minimum: 8, maximum: 12 }, allow_blank: true

  default_scope { where(deleted_at: nil) }
  scope :with_active_systems, -> { joins(:systems).where(systems: { status: "active" }) }

  class << self
    def collect_table_data(customers)
      customers.collect do |customer|
        [
          customer.id,
          customer.name,
          customer.mobile,
          customer.address,
          customer.state.titleize,
          "<a href='/customers/#{customer.id}'> View </a>",
        ]
      end
    end
  end
end
