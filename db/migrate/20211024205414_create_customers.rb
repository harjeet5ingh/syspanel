class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :mobile
      t.text :address, size: :long
      t.string :state
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
