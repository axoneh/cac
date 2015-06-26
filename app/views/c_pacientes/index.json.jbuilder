json.array!(@c_pacientes) do |c_paciente|
  json.extract! c_paciente, :id, :respuesta, :pacientes_id, :caracteristicas_patologicas_id
  json.url c_paciente_url(c_paciente, format: :json)
end
