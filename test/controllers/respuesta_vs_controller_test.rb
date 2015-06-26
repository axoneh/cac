require 'test_helper'

class RespuestaVsControllerTest < ActionController::TestCase
  setup do
    @respuesta_v = respuesta_vs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:respuesta_vs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create respuesta_v" do
    assert_difference('RespuestaV.count') do
      post :create, respuesta_v: { pregunta_visita_id: @respuesta_v.pregunta_visita_id, visita_id: @respuesta_v.visita_id }
    end

    assert_redirected_to respuesta_v_path(assigns(:respuesta_v))
  end

  test "should show respuesta_v" do
    get :show, id: @respuesta_v
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @respuesta_v
    assert_response :success
  end

  test "should update respuesta_v" do
    patch :update, id: @respuesta_v, respuesta_v: { pregunta_visita_id: @respuesta_v.pregunta_visita_id, visita_id: @respuesta_v.visita_id }
    assert_redirected_to respuesta_v_path(assigns(:respuesta_v))
  end

  test "should destroy respuesta_v" do
    assert_difference('RespuestaV.count', -1) do
      delete :destroy, id: @respuesta_v
    end

    assert_redirected_to respuesta_vs_path
  end
end
