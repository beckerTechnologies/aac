class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.text :section_number
      t.text :section_text

      t.timestamps
    end
  end
end
