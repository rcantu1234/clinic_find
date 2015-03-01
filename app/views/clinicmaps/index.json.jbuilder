json.array!(@clinicmaps) do |clinicmap|
  json.extract! clinicmap, :id
  json.url clinicmap_url(clinicmap, format: :json)
end
