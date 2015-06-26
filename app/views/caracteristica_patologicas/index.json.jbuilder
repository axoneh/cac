json.array!(@caracteristica_patologicas) do |caracteristica_patologica|
  json.extract! caracteristica_patologica, :id, :nombre, :descripcion
  json.url caracteristica_patologica_url(caracteristica_patologica, format: :json)
end
