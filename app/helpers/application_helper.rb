module ApplicationHelper
  def page_title(base = '')
    page_title = "Gitit, Git it your way!"
    if base.empty?
      page_title
    else
      base + " | " + page_title
    end
  end
end
