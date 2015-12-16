json.array!(@popcorns) do |popcorn|
  json.extract! popcorn, :id, :flavor, :description, :picture
  json.url popcorn_url(popcorn, format: :json)
end
