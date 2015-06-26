json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :identificacion, :nombre, :apellido, :genero, :direccion, :estado, :fechaNacimiento, :patologia_id, :tipo_documentos_id, :estado_civils_id
  json.url paciente_url(paciente, format: :json)
end
