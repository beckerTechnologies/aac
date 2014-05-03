class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.integer :response_id
      t.text :label
      t.text :description
      t.attachment :avatar

      t.timestamps
    end
  end
end
