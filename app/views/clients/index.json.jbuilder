json.array!(@clients) do |client|
  json.extract! client, :id, :name, :phone, :address_line_1, :address_line_2, :city, :state, :country, :zipcode
  json.url client_url(client, format: :json)
end
