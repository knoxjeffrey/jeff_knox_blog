# frozen_string_literal: true

require 'lib/cells/middleman_cell'

# FormCell class
class FormCell < MiddlemanCell
  def fieldset(&block)
    render(&block)
  end

  def formgroup(&block)
    render(&block)
  end

  def label(&block)
    label_tag(*args, &block)
  end
end
