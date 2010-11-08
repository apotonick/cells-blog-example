module ApplicationHelper
  def t(text)
    RedCloth.new(text).to_html.html_safe
  end
end
