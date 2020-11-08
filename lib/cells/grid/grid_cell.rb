# frozen_string_literal: true

require 'lib/cells/middleman_cell'

# GridCell class
class GridCell < MiddlemanCell
  def grid(&block)
    content_tag(:div, class: 'image-grid') do
      block.call.html_safe
    end
  end
end
