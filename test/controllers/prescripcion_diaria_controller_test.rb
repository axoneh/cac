require 'test_helper'

class PrescripcionDiariaControllerTest < ActionController::TestCase
  setup do
    @prescripcion_diarium = prescripcion_diaria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prescripcion_diaria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prescripcion_diarium" do
    assert_difference('PrescripcionDiarium.count') do
      post :create, prescripcion_diarium: { cantidadGramos: @prescripcion_diarium.cantidadGramos, dia_semanals_id: @prescripcion_diarium.dia_semanals_id, prescripcions_id: @prescripcion_diarium.prescripcions_id }
    end

    assert_redirected_to prescripcion_diarium_path(assigns(:prescripcion_diarium))
  end

  test "should show prescripcion_diarium" do
    get :show, id: @prescripcion_diarium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prescripcion_diarium
    assert_response :success
  end

  test "should update prescripcion_diarium" do
    patch :update, id: @prescripcion_diarium, prescripcion_diarium: { cantidadGramos: @prescripcion_diarium.cantidadGramos, dia_semanals_id: @prescripcion_diarium.dia_semanals_id, prescripcions_id: @prescripcion_diarium.prescripcions_id }
    assert_redirected_to prescripcion_diarium_path(assigns(:prescripcion_diarium))
  end

  test "should destroy prescripcion_diarium" do
    assert_difference('PrescripcionDiarium.count', -1) do
      delete :destroy, id: @prescripcion_diarium
    end

    assert_redirected_to prescripcion_diaria_path
  end
end
