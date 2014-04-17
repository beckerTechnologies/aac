class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.integer :role_id
      t.text :name
      t.text :address
      t.text :city
      t.text :state
      t.text :zip
      t.integer :phone_number
      t.boolean :admin

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
  
end
