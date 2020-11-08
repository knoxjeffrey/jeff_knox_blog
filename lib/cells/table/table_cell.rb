# frozen_string_literal: true

require 'lib/cells/middleman_cell'

# TableCell class
class TableCell < MiddlemanCell
  def table(&block)
    render(&block)
  end

  def head(&block)
    content_tag :thead do
      block.call.html_safe
    end
  end

  def foot(&block)
    content_tag :tfoot do
      content_tag :tr do
        content_tag :th, options[:text], colspan: options[:colspan]
      end
    end
  end

  def body(&block)
    content_tag :tbody do
      block.call.html_safe
    end
  end
end
