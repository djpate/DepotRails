class Views::Products::Form < Views::Layouts::Application
  def content
    rawtext form_for(@product) do |f|
    if @product.errors.any?
    div :id => 'error_explanation' do
      h2 do
        rawtext pluralize(@product.errors.count, "error")
        text 'prohibited this product from being saved:'
      end
      ul do
        @product.errors.full_messages.each do |msg|
          li do
            rawtext msg
          end
        end
      end
    end
  end
  div :class => 'field' do
    rawtext f.label :title
    br
    rawtext f.text_field :title
  end
  div :class => 'field' do
    rawtext f.label :description
    br
    rawtext f.text_area :description
  end
  div :class => 'field' do
    rawtext f.label :image_url
    br
    rawtext f.text_field :image_url
  end
  div :class => 'field' do
    rawtext f.label :price
    br
    rawtext f.text_field :price
  end
  div :class => 'actions' do
    rawtext f.submit
  end
end
  end
end
