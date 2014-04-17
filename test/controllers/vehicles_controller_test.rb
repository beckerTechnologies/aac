require 'test_helper'

class VehiclesControllerTest < ActionController::TestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post :create, vehicle: { calculation_and_total_cost_for_inspection: @vehicle.calculation_and_total_cost_for_inspection, date_of_inspection: @vehicle.date_of_inspection, dealer_id: @vehicle.dealer_id, estimated_total_cost_for_repairs: @vehicle.estimated_total_cost_for_repairs, estimated_total_cost_of_repair: @vehicle.estimated_total_cost_of_repair, exterior_color: @vehicle.exterior_color, including_actual_miles: @vehicle.including_actual_miles, inspection_revealed_frame_damage: @vehicle.inspection_revealed_frame_damage, inspection_revealed_frame_damage_details: @vehicle.inspection_revealed_frame_damage_details, inspection_revealed_safety_issues: @vehicle.inspection_revealed_safety_issues, inspection_revealed_safety_issues_details: @vehicle.inspection_revealed_safety_issues_details, interior_color: @vehicle.interior_color, make: @vehicle.make, model: @vehicle.model, not_lncluding_actual_miles: @vehicle.not_lncluding_actual_miles, sec_7_1_a: @vehicle.sec_7_1_a, sec_7_1_a_details: @vehicle.sec_7_1_a_details, sec_7_1_b: @vehicle.sec_7_1_b, sec_7_1_b_details: @vehicle.sec_7_1_b_details, sec_7_1_c: @vehicle.sec_7_1_c, sec_7_1_c_details: @vehicle.sec_7_1_c_details, sec_7_1_d: @vehicle.sec_7_1_d, sec_7_1_d_details: @vehicle.sec_7_1_d_details, sec_7_2_a: @vehicle.sec_7_2_a, sec_7_2_a: @vehicle.sec_7_2_a, sec_7_2_a_details: @vehicle.sec_7_2_a_details, sec_7_2_a_details: @vehicle.sec_7_2_a_details, sec_7_2_b: @vehicle.sec_7_2_b, sec_7_2_b: @vehicle.sec_7_2_b, sec_7_2_b_details: @vehicle.sec_7_2_b_details, sec_7_2_b_details: @vehicle.sec_7_2_b_details, sec_7_2_c: @vehicle.sec_7_2_c, sec_7_2_c: @vehicle.sec_7_2_c, sec_7_2_c_details: @vehicle.sec_7_2_c_details, sec_7_2_c_details: @vehicle.sec_7_2_c_details, sec_7_2_d: @vehicle.sec_7_2_d, sec_7_2_d: @vehicle.sec_7_2_d, sec_7_2_d_details: @vehicle.sec_7_2_d_details, sec_7_2_d_details: @vehicle.sec_7_2_d_details, sec_7_2_e: @vehicle.sec_7_2_e, sec_7_2_e_details: @vehicle.sec_7_2_e_details, sec_7_2_f: @vehicle.sec_7_2_f, sec_7_2_f_details: @vehicle.sec_7_2_f_details, sec_7_2_g: @vehicle.sec_7_2_g, sec_7_2_g_details: @vehicle.sec_7_2_g_details, sec_7_2_h: @vehicle.sec_7_2_h, sec_7_2_h_details: @vehicle.sec_7_2_h_details, sec_7_2_i: @vehicle.sec_7_2_i, sec_7_2_i_details: @vehicle.sec_7_2_i_details, sec_7_2_j: @vehicle.sec_7_2_j, sec_7_2_j_details: @vehicle.sec_7_2_j_details, sec_7_3_a: @vehicle.sec_7_3_a, sec_7_3_a_details: @vehicle.sec_7_3_a_details, sec_7_3_b: @vehicle.sec_7_3_b, sec_7_3_b_details: @vehicle.sec_7_3_b_details, sec_7_3_c: @vehicle.sec_7_3_c, sec_7_3_c_details: @vehicle.sec_7_3_c_details, sec_7_3_d: @vehicle.sec_7_3_d, sec_7_3_d_details: @vehicle.sec_7_3_d_details, sec_7_3_e: @vehicle.sec_7_3_e, sec_7_3_e_details: @vehicle.sec_7_3_e_details, sec_7_3_f: @vehicle.sec_7_3_f, sec_7_3_f_details: @vehicle.sec_7_3_f_details, sec_7_3_g: @vehicle.sec_7_3_g, sec_7_3_g_details: @vehicle.sec_7_3_g_details, sec_7_4: @vehicle.sec_7_4, sec_7_4_details: @vehicle.sec_7_4_details, sec_7_5: @vehicle.sec_7_5, sec_7_5_details: @vehicle.sec_7_5_details, sec_7_6: @vehicle.sec_7_6, sec_7_6_details: @vehicle.sec_7_6_details, sec_7_7: @vehicle.sec_7_7, sec_7_7_details: @vehicle.sec_7_7_details, stock_no: @vehicle.stock_no, total_cost: @vehicle.total_cost, user_id: @vehicle.user_id, vin_id: @vehicle.vin_id, year: @vehicle.year }
    end

    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should show vehicle" do
    get :show, id: @vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle
    assert_response :success
  end

  test "should update vehicle" do
    patch :update, id: @vehicle, vehicle: { calculation_and_total_cost_for_inspection: @vehicle.calculation_and_total_cost_for_inspection, date_of_inspection: @vehicle.date_of_inspection, dealer_id: @vehicle.dealer_id, estimated_total_cost_for_repairs: @vehicle.estimated_total_cost_for_repairs, estimated_total_cost_of_repair: @vehicle.estimated_total_cost_of_repair, exterior_color: @vehicle.exterior_color, including_actual_miles: @vehicle.including_actual_miles, inspection_revealed_frame_damage: @vehicle.inspection_revealed_frame_damage, inspection_revealed_frame_damage_details: @vehicle.inspection_revealed_frame_damage_details, inspection_revealed_safety_issues: @vehicle.inspection_revealed_safety_issues, inspection_revealed_safety_issues_details: @vehicle.inspection_revealed_safety_issues_details, interior_color: @vehicle.interior_color, make: @vehicle.make, model: @vehicle.model, not_lncluding_actual_miles: @vehicle.not_lncluding_actual_miles, sec_7_1_a: @vehicle.sec_7_1_a, sec_7_1_a_details: @vehicle.sec_7_1_a_details, sec_7_1_b: @vehicle.sec_7_1_b, sec_7_1_b_details: @vehicle.sec_7_1_b_details, sec_7_1_c: @vehicle.sec_7_1_c, sec_7_1_c_details: @vehicle.sec_7_1_c_details, sec_7_1_d: @vehicle.sec_7_1_d, sec_7_1_d_details: @vehicle.sec_7_1_d_details, sec_7_2_a: @vehicle.sec_7_2_a, sec_7_2_a: @vehicle.sec_7_2_a, sec_7_2_a_details: @vehicle.sec_7_2_a_details, sec_7_2_a_details: @vehicle.sec_7_2_a_details, sec_7_2_b: @vehicle.sec_7_2_b, sec_7_2_b: @vehicle.sec_7_2_b, sec_7_2_b_details: @vehicle.sec_7_2_b_details, sec_7_2_b_details: @vehicle.sec_7_2_b_details, sec_7_2_c: @vehicle.sec_7_2_c, sec_7_2_c: @vehicle.sec_7_2_c, sec_7_2_c_details: @vehicle.sec_7_2_c_details, sec_7_2_c_details: @vehicle.sec_7_2_c_details, sec_7_2_d: @vehicle.sec_7_2_d, sec_7_2_d: @vehicle.sec_7_2_d, sec_7_2_d_details: @vehicle.sec_7_2_d_details, sec_7_2_d_details: @vehicle.sec_7_2_d_details, sec_7_2_e: @vehicle.sec_7_2_e, sec_7_2_e_details: @vehicle.sec_7_2_e_details, sec_7_2_f: @vehicle.sec_7_2_f, sec_7_2_f_details: @vehicle.sec_7_2_f_details, sec_7_2_g: @vehicle.sec_7_2_g, sec_7_2_g_details: @vehicle.sec_7_2_g_details, sec_7_2_h: @vehicle.sec_7_2_h, sec_7_2_h_details: @vehicle.sec_7_2_h_details, sec_7_2_i: @vehicle.sec_7_2_i, sec_7_2_i_details: @vehicle.sec_7_2_i_details, sec_7_2_j: @vehicle.sec_7_2_j, sec_7_2_j_details: @vehicle.sec_7_2_j_details, sec_7_3_a: @vehicle.sec_7_3_a, sec_7_3_a_details: @vehicle.sec_7_3_a_details, sec_7_3_b: @vehicle.sec_7_3_b, sec_7_3_b_details: @vehicle.sec_7_3_b_details, sec_7_3_c: @vehicle.sec_7_3_c, sec_7_3_c_details: @vehicle.sec_7_3_c_details, sec_7_3_d: @vehicle.sec_7_3_d, sec_7_3_d_details: @vehicle.sec_7_3_d_details, sec_7_3_e: @vehicle.sec_7_3_e, sec_7_3_e_details: @vehicle.sec_7_3_e_details, sec_7_3_f: @vehicle.sec_7_3_f, sec_7_3_f_details: @vehicle.sec_7_3_f_details, sec_7_3_g: @vehicle.sec_7_3_g, sec_7_3_g_details: @vehicle.sec_7_3_g_details, sec_7_4: @vehicle.sec_7_4, sec_7_4_details: @vehicle.sec_7_4_details, sec_7_5: @vehicle.sec_7_5, sec_7_5_details: @vehicle.sec_7_5_details, sec_7_6: @vehicle.sec_7_6, sec_7_6_details: @vehicle.sec_7_6_details, sec_7_7: @vehicle.sec_7_7, sec_7_7_details: @vehicle.sec_7_7_details, stock_no: @vehicle.stock_no, total_cost: @vehicle.total_cost, user_id: @vehicle.user_id, vin_id: @vehicle.vin_id, year: @vehicle.year }
    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete :destroy, id: @vehicle
    end

    assert_redirected_to vehicles_path
  end
end
