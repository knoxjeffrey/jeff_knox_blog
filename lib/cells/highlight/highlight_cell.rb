# frozen_string_literal: true

require 'lib/cells/middleman_cell'

# HighlightCell class
class HighlightCell < MiddlemanCell
  def highlight(&block)
    content_tag(:pre) do
      content_tag(:code, class: "hljs #{options[:code]}") do
        block.call.html_safe
      end
    end
  end
end
