json.array!(@cuenta_usuarios) do |cuenta_usuario|
  json.extract! cuenta_usuario, :id, :identificacion, :nombre, :apellido, :rol, :genero, :fechaNacimiento, :direccion, :estado, :tipo_documentos_id, :estado_civils_id
  json.url cuenta_usuario_url(cuenta_usuario, format: :json)
end
