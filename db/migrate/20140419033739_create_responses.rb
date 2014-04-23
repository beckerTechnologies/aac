class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :inspection_id
      t.integer :section_id
      t.boolean :check
      t.text :details
      t.text :auxilary_details

      t.timestamps
    end
  end
end
