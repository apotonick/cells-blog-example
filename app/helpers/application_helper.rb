module ApplicationHelper
  
  include ActsAsTaggableOn::TagsHelper  # FIXME: use in Cell?

  def t(text)
    RedCloth.new(text).to_html.html_safe
  end
end
