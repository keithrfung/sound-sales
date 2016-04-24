json.array!(@regions) do |region|
  json.extract! region, :id, :name, :area, :city, :state, :zipcode, :country
  json.url region_url(region, format: :json)
end
