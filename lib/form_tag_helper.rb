# frozen_string_literal: true

# FormTagHelper module
module FormTagHelper
  extend self
  include ActionView::Helpers::FormTagHelper

  attr_accessor :output_buffer

  private

  def protect_against_forgery?
    false
  end
end
