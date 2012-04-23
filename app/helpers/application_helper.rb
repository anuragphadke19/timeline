module ApplicationHelper
  def title(page_title)
    if page_title
      title = "Timeline | #{page_title}"
    else
      title = "Timeline"
    end
  end
end
