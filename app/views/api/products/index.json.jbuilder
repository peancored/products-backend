json.products do
	json.array! @products, partial: 'api/products/model', as: :product
end
