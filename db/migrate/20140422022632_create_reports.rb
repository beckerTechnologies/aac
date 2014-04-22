class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :name

      t.timestamps
    end
  end
end
