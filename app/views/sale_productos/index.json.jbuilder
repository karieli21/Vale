json.array!(@sale_productos) do |sale_producto|
  json.extract! sale_producto, :id, :sale_id, :producto_id
  json.url sale_producto_url(sale_producto, format: :json)
end
