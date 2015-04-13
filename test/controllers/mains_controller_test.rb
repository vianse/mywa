require 'test_helper'

class MainsControllerTest < ActionController::TestCase
  setup do
    @main = mains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create main" do
    assert_difference('Main.count') do
      post :create, main: { age: @main.age, allergic_drug: @main.allergic_drug, allergic_food: @main.allergic_food, blood_type: @main.blood_type, car_insurance: @main.car_insurance, code: @main.code, diseases: @main.diseases, emergency_name: @main.emergency_name, emergency_phone: @main.emergency_phone, life_insurance: @main.life_insurance, name: @main.name, sex: @main.sex, user_id: @main.user_id }
    end

    assert_redirected_to main_path(assigns(:main))
  end

  test "should show main" do
    get :show, id: @main
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @main
    assert_response :success
  end

  test "should update main" do
    patch :update, id: @main, main: { age: @main.age, allergic_drug: @main.allergic_drug, allergic_food: @main.allergic_food, blood_type: @main.blood_type, car_insurance: @main.car_insurance, code: @main.code, diseases: @main.diseases, emergency_name: @main.emergency_name, emergency_phone: @main.emergency_phone, life_insurance: @main.life_insurance, name: @main.name, sex: @main.sex, user_id: @main.user_id }
    assert_redirected_to main_path(assigns(:main))
  end

  test "should destroy main" do
    assert_difference('Main.count', -1) do
      delete :destroy, id: @main
    end

    assert_redirected_to mains_path
  end
end
