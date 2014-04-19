class CreateVehicles < ActiveRecord::Migration
  def up
    create_table :inspections do |t|
      t.integer :dealer_id
      t.string :user_id
      t.integer :year
      t.string :make
      t.string :model
      t.string :stock_no
      t.string :vin_id
      t.string :exterior_color
      t.string :interior_color

      t.string :sec_3_1
      t.string :sec_3_2
      t.string :sec_4 # its actually 8
      t.boolean :sec_5
      t.text :sec_5_details
      t.attachment :sec_5_media
      t.boolean :sec_6
      t.text :sec_6_details
      t.attachment :sec_6_media

      t.boolean :sec_7_1_a
      t.text :sec_7_1_a_details
      t.attachment :sec_7_1_a_media
      t.boolean :sec_7_1_b
      t.text :sec_7_1_b_details
      t.attachment :sec_7_1_a_media
      t.boolean :sec_7_1_c
      t.text :sec_7_1_c_details
      t.attachment :sec_7_1_a_media
      t.boolean :sec_7_1_d
      t.text :sec_7_1_d_details
      t.attachment :sec_7_1_a_media

      t.boolean :sec_7_2_a
      t.text :sec_7_2_a_details
      t.attachment :sec_7_2_a_media
      t.boolean :sec_7_2_b
      t.text :sec_7_2_b_details
      t.attachment :sec_7_2_b_media
      t.boolean :sec_7_2_c
      t.text :sec_7_2_c_details
      t.attachment :sec_7_2_c_media
      t.boolean :sec_7_2_d
      t.text :sec_7_2_d_details
      t.attachment :sec_7_2_d_media
      t.boolean :sec_7_2_e
      t.text :sec_7_2_e_details
      t.attachment :sec_7_2_e_media
      t.boolean :sec_7_2_f
      t.text :sec_7_2_f_details
      t.attachment :sec_7_2_f_media
      t.boolean :sec_7_2_g
      t.text :sec_7_2_g_details
      t.attachment :sec_7_2_g_media
      t.boolean :sec_7_2_h
      t.text :sec_7_2_h_details
      t.attachment :sec_7_2_h_media
      t.boolean :sec_7_2_i
      t.text :sec_7_2_i_details
      t.attachment :sec_7_2_i_media
      t.boolean :sec_7_2_j
      t.text :sec_7_2_j_details
      t.attachment :sec_7_2_j_media

      t.boolean :sec_7_3_a
      t.text :sec_7_3_a_details
      t.attachment :sec_7_3_a_media
      t.boolean :sec_7_3_b
      t.text :sec_7_3_b_details
      t.attachment :sec_7_3_b_media
      t.boolean :sec_7_3_c
      t.text :sec_7_3_c_details
      t.attachment :sec_7_3_c_media
      t.boolean :sec_7_3_d
      t.text :sec_7_3_d_details
      t.attachment :sec_7_3_d_media
      t.boolean :sec_7_3_e
      t.text :sec_7_3_e_details
      t.attachment :sec_7_3_e_media
      t.boolean :sec_7_3_f
      t.text :sec_7_3_f_details
      t.attachment :sec_7_3_f_media
      t.boolean :sec_7_3_g
      t.text :sec_7_3_g_details
      t.attachment :sec_7_3_g_media

      t.boolean :sec_7_4
      t.text :sec_7_4_details
      t.attachment :sec_7_4_media
      t.boolean :sec_7_5
      t.text :sec_7_5_details
      t.attachment :sec_7_5_media
      t.boolean :sec_7_6
      t.text :sec_7_6_details
      t.attachment :sec_7_6_media
      t.boolean :sec_7_7
      t.text :sec_7_7_details
      t.attachment :sec_7_7_media
      t.integer :estimated_total_cost_for_repairs
      t.date :date_of_inspection
      t.integer :calculation_and_total_cost_for_inspection
      t.integer :total_cost

      t.timestamps
    end
  end

  def down
      drop_table :inspections
  end
  
end
