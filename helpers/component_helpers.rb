# frozen_string_literal: true

# Component helper using Trailblazer Cells
module ComponentHelpers
  def component(cell, cell_method, locals = nil, &block)
    Object.const_get("#{cell.capitalize}Cell")
          .call(app, locals)
          .call(cell_method) { capture(&block) if block_given? }
  end

  def component_alert(**args)
    component :alert, :alert, args
  end

  def component_button(**args)
    component :button, :button, args
  end

  def testing(arg, &block)
    # content = capture(&block)
    # concat content
    capture(&block)
  end
end
