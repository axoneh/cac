json.array!(@prescripcion_diaria) do |prescripcion_diarium|
  json.extract! prescripcion_diarium, :id, :cantidadGramos, :prescripcions_id, :dia_semanals_id
  json.url prescripcion_diarium_url(prescripcion_diarium, format: :json)
end
