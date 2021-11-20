module ApplicationHelper
  def active? page
    'active' if current_page?(page)
  end
end
