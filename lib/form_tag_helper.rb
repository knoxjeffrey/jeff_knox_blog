# frozen_string_literal: true

# FormTagHelper module
module FormTagHelper
  extend self
  include ActionView::Helpers::FormTagHelper

  attr_accessor :output_buffer

  def form_label_tag(...)
    label_tag(...)
  end

  def form_text_field_tag(...)
    text_field_tag(...)
  end

  private

  def protect_against_forgery?
    false
  end
end
