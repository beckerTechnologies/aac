class CreateVehicles < ActiveRecord::Migration
  def up
    create_table :vehicles do |t|
      t.integer :dealer_id
      t.string :user_id
      t.integer :year
      t.string :make
      t.string :model
      t.string :stock_no
      t.string :vin_id
      t.string :exterior_color
      t.string :interior_color
      t.string :including_actual_miles
      t.string :not_lncluding_actual_miles
      t.string :estimated_total_cost_of_repair
      t.boolean :inspection_revealed_safety_issues
      t.text :inspection_revealed_safety_issues_details
      t.boolean :inspection_revealed_frame_damage
      t.text :inspection_revealed_frame_damage_details
      t.boolean :sec_7_1_a
      t.text :sec_7_1_a_details
      t.boolean :sec_7_1_b
      t.text :sec_7_1_b_details
      t.boolean :sec_7_1_c
      t.text :sec_7_1_c_details
      t.boolean :sec_7_1_d
      t.text :sec_7_1_d_details
      t.boolean :sec_7_2_a
      t.text :sec_7_2_a_details
      t.boolean :sec_7_2_b
      t.text :sec_7_2_b_details
      t.boolean :sec_7_2_c
      t.text :sec_7_2_c_details
      t.boolean :sec_7_2_d
      t.text :sec_7_2_d_details
      t.boolean :sec_7_2_a
      t.text :sec_7_2_a_details
      t.boolean :sec_7_2_b
      t.text :sec_7_2_b_details
      t.boolean :sec_7_2_c
      t.text :sec_7_2_c_details
      t.boolean :sec_7_2_d
      t.text :sec_7_2_d_details
      t.boolean :sec_7_2_e
      t.text :sec_7_2_e_details
      t.boolean :sec_7_2_f
      t.text :sec_7_2_f_details
      t.boolean :sec_7_2_g
      t.text :sec_7_2_g_details
      t.boolean :sec_7_2_h
      t.text :sec_7_2_h_details
      t.boolean :sec_7_2_i
      t.text :sec_7_2_i_details
      t.boolean :sec_7_2_j
      t.text :sec_7_2_j_details
      t.boolean :sec_7_3_a
      t.text :sec_7_3_a_details
      t.boolean :sec_7_3_b
      t.text :sec_7_3_b_details
      t.boolean :sec_7_3_c
      t.text :sec_7_3_c_details
      t.boolean :sec_7_3_d
      t.text :sec_7_3_d_details
      t.boolean :sec_7_3_e
      t.text :sec_7_3_e_details
      t.boolean :sec_7_3_f
      t.text :sec_7_3_f_details
      t.boolean :sec_7_3_g
      t.text :sec_7_3_g_details
      t.boolean :sec_7_4
      t.text :sec_7_4_details
      t.boolean :sec_7_5
      t.text :sec_7_5_details
      t.boolean :sec_7_6
      t.text :sec_7_6_details
      t.boolean :sec_7_7
      t.text :sec_7_7_details
      t.integer :estimated_total_cost_for_repairs
      t.date :date_of_inspection
      t.integer :calculation_and_total_cost_for_inspection
      t.integer :total_cost

      t.timestamps
    end
  end

  def down
      drop_table :vehicles
  end
  
end
