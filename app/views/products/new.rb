class Views::Products::New < Views::Layouts::Application
  def content
    h1 do
      text 'New product'
    end
    rawtext render('form')
    rawtext link_to('Back', products_path)
  end
end
