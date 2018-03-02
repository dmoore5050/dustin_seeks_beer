json.extract! beer, :id, :name, :style, :brewer, :store, :created_at, :updated_at
json.url beer_url(beer, format: :json)
