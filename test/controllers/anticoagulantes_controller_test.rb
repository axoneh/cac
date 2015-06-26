require 'test_helper'

class AnticoagulantesControllerTest < ActionController::TestCase
  setup do
    @anticoagulante = anticoagulantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anticoagulantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anticoagulante" do
    assert_difference('Anticoagulante.count') do
      post :create, anticoagulante: { descripcion: @anticoagulante.descripcion, nombre: @anticoagulante.nombre }
    end

    assert_redirected_to anticoagulante_path(assigns(:anticoagulante))
  end

  test "should show anticoagulante" do
    get :show, id: @anticoagulante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anticoagulante
    assert_response :success
  end

  test "should update anticoagulante" do
    patch :update, id: @anticoagulante, anticoagulante: { descripcion: @anticoagulante.descripcion, nombre: @anticoagulante.nombre }
    assert_redirected_to anticoagulante_path(assigns(:anticoagulante))
  end

  test "should destroy anticoagulante" do
    assert_difference('Anticoagulante.count', -1) do
      delete :destroy, id: @anticoagulante
    end

    assert_redirected_to anticoagulantes_path
  end
end
