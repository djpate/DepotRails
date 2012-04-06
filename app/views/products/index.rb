class Views::Products::Index < Views::Layouts::Application
  def content
    h1 do
      text 'Listing products'
    end
    table do
      tr do
        th do
          text 'Title'
        end
        th do
          text 'Description'
        end
        th do
          text 'Image url'
        end
        th do
          text 'Price'
        end
        th do
        end
        th do
        end
        th do
        end
      end
      @products.each do |product|
        tr do
          td do
            rawtext product.title
          end
          td do
            rawtext product.description
          end
          td do
            rawtext product.image_url
          end
          td do
            rawtext product.price
          end
          td do
            rawtext link_to('Show', product)
          end
          td do
            rawtext link_to('Edit', edit_product_path(product))
          end
          td do
            rawtext link_to('Destroy', product, confirm: 'Are you sure?', method: :delete)
          end
        end
      end
    end
    br
    rawtext link_to('New Product', new_product_path)
  end
end
