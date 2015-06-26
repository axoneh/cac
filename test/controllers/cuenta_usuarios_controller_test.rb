require 'test_helper'

class CuentaUsuariosControllerTest < ActionController::TestCase
  setup do
    @cuenta_usuario = cuenta_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cuenta_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cuenta_usuario" do
    assert_difference('CuentaUsuario.count') do
      post :create, cuenta_usuario: { apellido: @cuenta_usuario.apellido, direccion: @cuenta_usuario.direccion, estado: @cuenta_usuario.estado, estado_civils_id: @cuenta_usuario.estado_civils_id, fechaNacimiento: @cuenta_usuario.fechaNacimiento, genero: @cuenta_usuario.genero, identificacion: @cuenta_usuario.identificacion, nombre: @cuenta_usuario.nombre, rol: @cuenta_usuario.rol, tipo_documentos_id: @cuenta_usuario.tipo_documentos_id }
    end

    assert_redirected_to cuenta_usuario_path(assigns(:cuenta_usuario))
  end

  test "should show cuenta_usuario" do
    get :show, id: @cuenta_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cuenta_usuario
    assert_response :success
  end

  test "should update cuenta_usuario" do
    patch :update, id: @cuenta_usuario, cuenta_usuario: { apellido: @cuenta_usuario.apellido, direccion: @cuenta_usuario.direccion, estado: @cuenta_usuario.estado, estado_civils_id: @cuenta_usuario.estado_civils_id, fechaNacimiento: @cuenta_usuario.fechaNacimiento, genero: @cuenta_usuario.genero, identificacion: @cuenta_usuario.identificacion, nombre: @cuenta_usuario.nombre, rol: @cuenta_usuario.rol, tipo_documentos_id: @cuenta_usuario.tipo_documentos_id }
    assert_redirected_to cuenta_usuario_path(assigns(:cuenta_usuario))
  end

  test "should destroy cuenta_usuario" do
    assert_difference('CuentaUsuario.count', -1) do
      delete :destroy, id: @cuenta_usuario
    end

    assert_redirected_to cuenta_usuarios_path
  end
end
