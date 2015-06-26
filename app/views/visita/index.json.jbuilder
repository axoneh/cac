json.array!(@visita) do |visitum|
  json.extract! visitum, :id, :InrDomicilio, :pacientes_id, :observacion
  json.url visitum_url(visitum, format: :json)
end
