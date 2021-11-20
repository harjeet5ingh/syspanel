class CreateCustomerSystems < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_systems do |t|
      t.integer :motor_type, default: 0
      t.text :address, size: :long
      t.string :state
      t.date :installation_date
      t.integer :status, default: 0
      t.references :system, foreign_key: true
      t.references :customer, foreign_key: true
      t.timestamps
    end
  end
end
