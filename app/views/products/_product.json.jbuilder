json.extract! product, :id, :name, :price, :detail, :quantity, :type_product_id, :created_at, :updated_at
json.url product_url(product, format: :json)
