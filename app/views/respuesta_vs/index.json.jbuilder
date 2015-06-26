json.array!(@respuesta_vs) do |respuesta_v|
  json.extract! respuesta_v, :id, :visita_id, :pregunta_visita_id
  json.url respuesta_v_url(respuesta_v, format: :json)
end
