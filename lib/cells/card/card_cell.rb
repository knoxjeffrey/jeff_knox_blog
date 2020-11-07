# frozen_string_literal: true

require 'lib/cells/middleman_cell'

# CardCell class
class CardCell < MiddlemanCell
  def card(&block)
    render(&block)
  end
end
