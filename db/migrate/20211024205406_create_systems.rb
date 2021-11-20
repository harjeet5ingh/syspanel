class CreateSystems < ActiveRecord::Migration[6.1]
  def change
    create_table :systems do |t|
      t.integer :name, default: 0
      t.date :manufactured_date
      t.integer :status, default: 0
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
