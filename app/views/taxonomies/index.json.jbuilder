json.array!(@taxonomies) do |taxonomy|
  json.extract! taxonomy, :id, :code, :description
  json.url taxonomy_url(taxonomy, format: :json)
end
