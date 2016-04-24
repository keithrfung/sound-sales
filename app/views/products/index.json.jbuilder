json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :price, :commission_rate
  json.url product_url(product, format: :json)
end
