json.array!(@prescripcions) do |prescripcion|
  json.extract! prescripcion, :id, :diasValidez, :anticoagulantes_id, :visita_id, :cuenta_usuarios_id
  json.url prescripcion_url(prescripcion, format: :json)
end
