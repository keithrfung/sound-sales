json.array!(@commissions) do |commission|
  json.extract! commission, :id, :amount
  json.url commission_url(commission, format: :json)
end
