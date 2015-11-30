json.array!(@sales) do |sale|
  json.extract! sale, :id, :folio, :fechacompra, :precio, :cantidad, :cliente_id
  json.url sale_url(sale, format: :json)
end
