class Views::Products::Edit < Views::Layouts::Application
  def content
    h1 do
      text 'Editing product'
    end
    rawtext render('form')
    rawtext link_to('Show', @product)
    text '|'
    rawtext link_to('Back', products_path)
  end
end
