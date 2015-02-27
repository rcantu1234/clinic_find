json.array!(@statics) do |static|
  json.extract! static, :id, :index, :edit, :show, :new
  json.url static_url(static, format: :json)
end
