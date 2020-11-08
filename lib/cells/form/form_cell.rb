# frozen_string_literal: true

require 'lib/cells/middleman_cell'

# FormCell class
class FormCell < MiddlemanCell
  def fieldset(&block)
    render(&block)
  end

  def formgroup(&block)
    content_tag(:div, class: 'form-group') do
      block.call.html_safe
    end
  end

  def label(&block)
    label_tag(*args, &block)
  end
end
