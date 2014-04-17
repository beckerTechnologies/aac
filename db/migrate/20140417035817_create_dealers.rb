class CreateDealers < ActiveRecord::Migration
  def up
    create_table :dealers do |t|
      t.integer :user_id
      t.text :name
      t.text :license_number
      t.text :address
      t.text :city
      t.text :state
      t.integer :zip

      t.timestamps
    end
  end

  def down
    drop_table :dealers
  end
  
end
