class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :year
      t.text :make
      t.text :model
      t.text :stock_number
      t.text :vin
      t.text :exterior_color
      t.text :interior_color

      t.timestamps
    end
  end
end
