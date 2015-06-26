require 'test_helper'

class CaracteristicaPatologicasControllerTest < ActionController::TestCase
  setup do
    @caracteristica_patologica = caracteristica_patologicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caracteristica_patologicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caracteristica_patologica" do
    assert_difference('CaracteristicaPatologica.count') do
      post :create, caracteristica_patologica: { descripcion: @caracteristica_patologica.descripcion, nombre: @caracteristica_patologica.nombre }
    end

    assert_redirected_to caracteristica_patologica_path(assigns(:caracteristica_patologica))
  end

  test "should show caracteristica_patologica" do
    get :show, id: @caracteristica_patologica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caracteristica_patologica
    assert_response :success
  end

  test "should update caracteristica_patologica" do
    patch :update, id: @caracteristica_patologica, caracteristica_patologica: { descripcion: @caracteristica_patologica.descripcion, nombre: @caracteristica_patologica.nombre }
    assert_redirected_to caracteristica_patologica_path(assigns(:caracteristica_patologica))
  end

  test "should destroy caracteristica_patologica" do
    assert_difference('CaracteristicaPatologica.count', -1) do
      delete :destroy, id: @caracteristica_patologica
    end

    assert_redirected_to caracteristica_patologicas_path
  end
end
