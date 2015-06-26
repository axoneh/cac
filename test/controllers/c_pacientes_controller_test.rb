require 'test_helper'

class CPacientesControllerTest < ActionController::TestCase
  setup do
    @c_paciente = c_pacientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_pacientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_paciente" do
    assert_difference('CPaciente.count') do
      post :create, c_paciente: { caracteristicas_patologicas_id: @c_paciente.caracteristicas_patologicas_id, pacientes_id: @c_paciente.pacientes_id, respuesta: @c_paciente.respuesta }
    end

    assert_redirected_to c_paciente_path(assigns(:c_paciente))
  end

  test "should show c_paciente" do
    get :show, id: @c_paciente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_paciente
    assert_response :success
  end

  test "should update c_paciente" do
    patch :update, id: @c_paciente, c_paciente: { caracteristicas_patologicas_id: @c_paciente.caracteristicas_patologicas_id, pacientes_id: @c_paciente.pacientes_id, respuesta: @c_paciente.respuesta }
    assert_redirected_to c_paciente_path(assigns(:c_paciente))
  end

  test "should destroy c_paciente" do
    assert_difference('CPaciente.count', -1) do
      delete :destroy, id: @c_paciente
    end

    assert_redirected_to c_pacientes_path
  end
end
