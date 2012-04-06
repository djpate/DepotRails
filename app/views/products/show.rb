class Views::Products::Show < Views::Layouts::Application
  def content
    p :id => 'notice' do
      rawtext notice
    end
    p do
      b do
        text 'Title:'
      end
      rawtext @product.title
    end
    p do
      b do
        text 'Description:'
      end
      rawtext @product.description
    end
    p do
      b do
        text 'Image url:'
      end
      rawtext @product.image_url
    end
    p do
      b do
        text 'Price:'
      end
      rawtext @product.price
    end
    rawtext link_to('Edit', edit_product_path(@product))
    text '|'
    rawtext link_to('Back', products_path)
  end
end
