json.array!(@anticoagulantes) do |anticoagulante|
  json.extract! anticoagulante, :id, :nombre, :descripcion
  json.url anticoagulante_url(anticoagulante, format: :json)
end
