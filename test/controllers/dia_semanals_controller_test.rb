require 'test_helper'

class DiaSemanalsControllerTest < ActionController::TestCase
  setup do
    @dia_semanal = dia_semanals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dia_semanals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dia_semanal" do
    assert_difference('DiaSemanal.count') do
      post :create, dia_semanal: { nombre: @dia_semanal.nombre, numero: @dia_semanal.numero }
    end

    assert_redirected_to dia_semanal_path(assigns(:dia_semanal))
  end

  test "should show dia_semanal" do
    get :show, id: @dia_semanal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dia_semanal
    assert_response :success
  end

  test "should update dia_semanal" do
    patch :update, id: @dia_semanal, dia_semanal: { nombre: @dia_semanal.nombre, numero: @dia_semanal.numero }
    assert_redirected_to dia_semanal_path(assigns(:dia_semanal))
  end

  test "should destroy dia_semanal" do
    assert_difference('DiaSemanal.count', -1) do
      delete :destroy, id: @dia_semanal
    end

    assert_redirected_to dia_semanals_path
  end
end
