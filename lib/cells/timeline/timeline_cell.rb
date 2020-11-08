# frozen_string_literal: true

require 'lib/cells/middleman_cell'

# TimelineCell class
class TimelineCell < MiddlemanCell
  def timeline(&block)
    content_tag :div, nil, class: "terminal-timeline" do
      block.call.html_safe
    end
  end
end
