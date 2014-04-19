class CreateInspections < ActiveRecord::Migration
  def change
    create_table :inspections do |t|
      t.integer :dealer_id
      t.integer :user_id
      t.integer :vehicle_id

      t.timestamps
    end
  end
end
