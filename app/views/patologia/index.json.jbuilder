json.array!(@patologia) do |patologium|
  json.extract! patologium, :id, :nombre, :descripcion
  json.url patologium_url(patologium, format: :json)
end
