json.(product, :id, :name, :category_id, :code, :price, :created_at, :updated_at)

json.category product.category.name

json.details do
  json.array! product.details
end
