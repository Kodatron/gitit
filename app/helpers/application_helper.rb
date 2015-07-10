module ApplicationHelper
  def page_title(base = '')
    page_title = "Young Creatives At Your Service!"
    if base.empty?
      page_title
    else
      base + " | " + page_title
    end
  end
end
