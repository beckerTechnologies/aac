class CreateInspections < ActiveRecord::Migration
  def change
    create_table :inspections do |t|
      t.integer :deadler_id
      t.integer :user_is
      t.integer :vehicle_id

      t.timestamps
    end
  end
end
