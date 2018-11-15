[
  {
    name: "CanterBook ÜberPro",
    category: "laptops",
    code: "123",
    price: 12.13,
    details: [
      {
        key: "Cpu",
        value: "16 core, Adeona processor"
      },
      {
        key: "Display",
        value: "Yes"
      }
    ]
  },
  {
    name: "CanterBook ÜberPro 2",
    category: "laptops",
    code: "124",
    price: 12.14,
    details: [
      {
        key: "Cpu",
        value: "16 core, Adeona processor"
      },
      {
        key: "Display",
        value: "Yes"
      }
    ]
  },
  {
    name: "CanterBook ÜberPro 3",
    category: "laptops",
    code: "125",
    price: 12.15,
    details: [
      {
        key: "Cpu",
        value: "16 core, Adeona processor"
      },
      {
        key: "Display",
        value: "Yes"
      }
    ]
  },
  {
    name: "CanterBook ÜberPro 4",
    category: "laptops",
    code: "126",
    price: 12.16,
    details: [
      {
        key: "Cpu",
        value: "16 core, Adeona processor"
      },
      {
        key: "Display",
        value: "Yes"
      }
    ]
  },
  {
    name: "CanterBook ÜberPro 5",
    category: "laptops",
    code: "127",
    price: 12.17,
    details: [
      {
        key: "Cpu",
        value: "16 core, Adeona processor"
      },
      {
        key: "Display",
        value: "Yes"
      }
    ]
  }
].each do |product|
  category = Category.find_or_create_by(name: product.delete(:category))
  details_arr = product.delete(:details)
  product = Product.find_or_create_by(product.merge(category: category))
  product.details << Detail.create(details_arr)
end
