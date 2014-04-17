class CreateMedia < ActiveRecord::Migration
  def up
    create_table :media do |t|
      t.integer :vehicle_id
      t.string :name
      t.string :type

      t.timestamps
    end
  end

  def down
  	drop_table :media
  end

end
