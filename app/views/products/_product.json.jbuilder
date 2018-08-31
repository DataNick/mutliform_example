json.extract! product, :id, :name, :author, :section, :quantity, :manufacturer, :description, :price, :rating, :created_at, :updated_at
json.url product_url(product, format: :json)
