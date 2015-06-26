require 'test_helper'

class PacientesControllerTest < ActionController::TestCase
  setup do
    @paciente = pacientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pacientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paciente" do
    assert_difference('Paciente.count') do
      post :create, paciente: { apellido: @paciente.apellido, direccion: @paciente.direccion, estado: @paciente.estado, estado_civils_id: @paciente.estado_civils_id, fechaNacimiento: @paciente.fechaNacimiento, genero: @paciente.genero, identificacion: @paciente.identificacion, nombre: @paciente.nombre, patologia_id: @paciente.patologia_id, tipo_documentos_id: @paciente.tipo_documentos_id }
    end

    assert_redirected_to paciente_path(assigns(:paciente))
  end

  test "should show paciente" do
    get :show, id: @paciente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paciente
    assert_response :success
  end

  test "should update paciente" do
    patch :update, id: @paciente, paciente: { apellido: @paciente.apellido, direccion: @paciente.direccion, estado: @paciente.estado, estado_civils_id: @paciente.estado_civils_id, fechaNacimiento: @paciente.fechaNacimiento, genero: @paciente.genero, identificacion: @paciente.identificacion, nombre: @paciente.nombre, patologia_id: @paciente.patologia_id, tipo_documentos_id: @paciente.tipo_documentos_id }
    assert_redirected_to paciente_path(assigns(:paciente))
  end

  test "should destroy paciente" do
    assert_difference('Paciente.count', -1) do
      delete :destroy, id: @paciente
    end

    assert_redirected_to pacientes_path
  end
end
