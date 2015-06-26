require 'test_helper'

class PreguntaVisitaControllerTest < ActionController::TestCase
  setup do
    @pregunta_visitum = pregunta_visita(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pregunta_visita)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pregunta_visitum" do
    assert_difference('PreguntaVisitum.count') do
      post :create, pregunta_visitum: { descripcion: @pregunta_visitum.descripcion, pregunta: @pregunta_visitum.pregunta }
    end

    assert_redirected_to pregunta_visitum_path(assigns(:pregunta_visitum))
  end

  test "should show pregunta_visitum" do
    get :show, id: @pregunta_visitum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pregunta_visitum
    assert_response :success
  end

  test "should update pregunta_visitum" do
    patch :update, id: @pregunta_visitum, pregunta_visitum: { descripcion: @pregunta_visitum.descripcion, pregunta: @pregunta_visitum.pregunta }
    assert_redirected_to pregunta_visitum_path(assigns(:pregunta_visitum))
  end

  test "should destroy pregunta_visitum" do
    assert_difference('PreguntaVisitum.count', -1) do
      delete :destroy, id: @pregunta_visitum
    end

    assert_redirected_to pregunta_visita_path
  end
end
