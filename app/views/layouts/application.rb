class Views::Layouts::Application < Erector::Widget
  def content
    rawtext '<!DOCTYPE html>'
    html do
      head do
        title do
          text 'DepotRails'
        end
        rawtext stylesheet_link_tag    "application", :media => "all"
        rawtext javascript_include_tag("application")
        rawtext csrf_meta_tags
      end
      body do
        rawtext @content_for_layout # Note: you must define @content_for_layout elsewhere
      end
    end
  end
end
