json.array!(@ajs) do |aj|
  json.extract! aj, :id, :name, :title, :content
  json.url aj_url(aj, format: :json)
end
