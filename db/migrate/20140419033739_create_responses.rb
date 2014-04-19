class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :inspection_id
      t.integer :section_id
      t.boolean :check
      t.text :details
      t.binary :media_data
      t.text :media_filename
      t.text :media_type

      t.timestamps
    end
  end
end
