json.array!(@dia_semanals) do |dia_semanal|
  json.extract! dia_semanal, :id, :numero, :nombre
  json.url dia_semanal_url(dia_semanal, format: :json)
end
