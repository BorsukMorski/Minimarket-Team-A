json.extract! product, :id, :title, :author, :isbn, :pages, :vendor, :created_at, :updated_at
json.url product_url(product, format: :json)
