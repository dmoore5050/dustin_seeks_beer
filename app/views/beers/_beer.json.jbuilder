json.extract! beer, :id, :name, :style, :brewer, :store, :created_at, :updated_at, :deleted_at, :desc
json.url beer_url(beer, format: :json)
