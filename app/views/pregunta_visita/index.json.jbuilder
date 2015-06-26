json.array!(@pregunta_visita) do |pregunta_visitum|
  json.extract! pregunta_visitum, :id, :pregunta, :descripcion
  json.url pregunta_visitum_url(pregunta_visitum, format: :json)
end
