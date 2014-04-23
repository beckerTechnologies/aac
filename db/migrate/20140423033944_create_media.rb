class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.integer :response_id
      t.text :label
      t.text :description
      t.binary :data
      t.text :filename
      t.text :type

      t.timestamps
    end
  end
end
