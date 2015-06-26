require 'test_helper'

class PrescripcionsControllerTest < ActionController::TestCase
  setup do
    @prescripcion = prescripcions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prescripcions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prescripcion" do
    assert_difference('Prescripcion.count') do
      post :create, prescripcion: { anticoagulantes_id: @prescripcion.anticoagulantes_id, cuenta_usuarios_id: @prescripcion.cuenta_usuarios_id, diasValidez: @prescripcion.diasValidez, visita_id: @prescripcion.visita_id }
    end

    assert_redirected_to prescripcion_path(assigns(:prescripcion))
  end

  test "should show prescripcion" do
    get :show, id: @prescripcion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prescripcion
    assert_response :success
  end

  test "should update prescripcion" do
    patch :update, id: @prescripcion, prescripcion: { anticoagulantes_id: @prescripcion.anticoagulantes_id, cuenta_usuarios_id: @prescripcion.cuenta_usuarios_id, diasValidez: @prescripcion.diasValidez, visita_id: @prescripcion.visita_id }
    assert_redirected_to prescripcion_path(assigns(:prescripcion))
  end

  test "should destroy prescripcion" do
    assert_difference('Prescripcion.count', -1) do
      delete :destroy, id: @prescripcion
    end

    assert_redirected_to prescripcions_path
  end
end
