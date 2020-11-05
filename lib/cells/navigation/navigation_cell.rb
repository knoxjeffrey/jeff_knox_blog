# frozen_string_literal: true

require 'lib/cells/middleman_cell'

# NavigationCell class
class NavigationCell < MiddlemanCell
  def main_navigation(&block)
    render(&block)
  end

  def main_footer(&block)
    render(&block)
  end

  def navigation_list_item
    active = options[:active] ? ' active' : '' 
    content_tag(:li) do
      link_to options[:text], options[:link], class: "menu-item#{active}"
    end
  end
end
