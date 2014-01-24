module ApplicationHelper

  def nav_links
	items = [home_link, about_link, contact_link]
	content_tag :ul, :class => "nav" do
	  items.collect { |item| concat item}
	end
  end

  def home_link
	 link_to "Home", root_path, :class => current_page?(root_path) ? "current" : "" 
  end

  def about_link
	  link_to "About", about_path, :class => current_page?(about_path) ? "current" : "" 
  end

  def contact_link
	  link_to "Contact", contact_path, :class => current_page?(contact_path) ? "current" : "" 
  end

end
