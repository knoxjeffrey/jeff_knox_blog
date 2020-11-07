# frozen_string_literal: true

require 'lib/cells/middleman_cell'

# FigureCell class
class FigureCell < MiddlemanCell
  include ::Cell::Slim
  def figure
    render
  end
end
