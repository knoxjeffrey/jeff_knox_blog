# frozen_string_literal: true

require 'lib/cells/middleman_cell'

# NavigationCell class
class NavigationCell < MiddlemanCell
  def main_navigation
    render
  end

  def main_footer(&block)
    render(&block)
  end
end
