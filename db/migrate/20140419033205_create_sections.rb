class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.text :form
      t.text :number
      t.text :heading
      t.text :question
      t.text :directions

      t.timestamps
    end
  end
end
