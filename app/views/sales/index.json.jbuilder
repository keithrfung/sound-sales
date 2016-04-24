json.array!(@sales) do |sale|
  json.extract! sale, :id, :quantity, :subtotal, :tax, :total, :payment_type, :sale_date
  json.url sale_url(sale, format: :json)
end
